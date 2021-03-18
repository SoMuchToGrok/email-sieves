require ["fileinto", "imap4flags", "vnd.proton.expire"];

# General catch all for delivery events. 
# Delete after 180 days, as this info can almost always be retrieved from the source of truth
# Sieve ordering is important here, as you can receive an email that contains "order delivered" in the subject (which would conflict with the "order handling" sieve that follows).
if header :contains "subject" ["shipping", "shipped", "delivered", "delivery"]
{
    fileinto "Orders and Shipping/Deliveries"; 
    expire "day" "180";
    stop;
}

# General catch all for orders.
# Do not expire, as these emails might be historically significant.
if header :contains "subject" ["order", "invoice"] 
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }
    fileinto "Orders and Shipping/Orders";
    stop;
}

# More targeted for catching general communication and updates. 
# Delete after 180 days, as this info can almost always be retrieved from the source of truth.
elsif address :matches :domain "from" ["*ups.com", "*upsemail.com", "*usps.com", "*fedex.com", "*narvar.com", "*etsy.com", "*amazon.com", "*newegg.com", "*rei.com", "*target.com", "*prana.com", "*walmart.com"]
{
    fileinto "Orders and Shipping"; 
    expire "day" "180";
}
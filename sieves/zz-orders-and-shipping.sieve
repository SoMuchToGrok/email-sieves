require ["fileinto", "imap4flags", "vnd.proton.expire", "regex"];

# General catch all for orders
if header :contains "subject" ["order", "invoice"] 
{
    fileinto "Orders & Shipping\Orders"; 
}

# General catch all for delivery events. Delete after 180 days.
if header :contains "subject" ["shipping", "shipped", "delivered", "delivery"]
{
    fileinto "Orders & Shipping\Deliveries"; 
    expire "day" "180";
}

# More targeted for catching general communication and updates. Delete after 180 days.
elsif address :matches :domain "from" ["*ups.com", "*upsemail.com", "*usps.com", "*fedex.com", "*narvar.com", 
"*etsy.com", "*amazon.com", "*newegg.com", "*rei.com", "*target.com"]
{
    fileinto "Orders & Shipping"; 
    expire "day" "180";
}
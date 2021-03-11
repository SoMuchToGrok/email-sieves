require ["fileinto", "imap4flags", "regex"];

# General catch all for orders
if header :contains "subject" ["order", "invoice"] 
{
    fileinto "Orders & Shipping\Orders"; 
}

# General catch all for delivery events
if header :contains "subject" ["shipping", "shipped", "delivered", "delivery"]
{
    fileinto "Orders & Shipping\Deliveries"; 
}

# More targeted for catching general communication and updates
elsif address :domain "from" ["ups.com", "upsemail.com", "usps.com", "fedex.com", "narvar.com", "etsy.com", "amazon.com", "newegg.com", "rei.com"]
{
    fileinto "Orders & Shipping"; 
}
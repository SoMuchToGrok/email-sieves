require ["fileinto", "imap4flags", "regex"];

# General catch all
if header :contains "subject" ["order", "invoice", "shipping", "shipped"] 
{
    fileinto "Orders & Shipping"; 
}

# More targeted
elsif address :domain "from" ["@ups.com", "@upsemail.com", "@usps.com", "@fedex.com", "@narvar.com", "@etsy.com", "@amazon.com", "@newegg.com", "@rei.com"]
{
    fileinto "Orders & Shipping"; 
}
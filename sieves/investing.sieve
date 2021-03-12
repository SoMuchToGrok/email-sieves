require ["fileinto", "imap4flags"];

# Commonly used investing platforms
if address :domain "from" ["troweprice.com", "e-vanguard.com", "vanguard.com", "m1finance.com", "coinbase.com", "robinhood.com"]
{
    fileinto "Finance/Investing";
    stop; 
}
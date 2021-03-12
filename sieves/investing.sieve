require ["fileinto", "imap4flags", "vnd.proton.expire"];

# For Robinhood Snacks
if header :contains "from" "Robinhood Snacks"
{
    expire "day" "7";
    stop;
}


# Commonly used investing platforms
elsif address :domain "from" ["troweprice.com", "e-vanguard.com", "vanguard.com", "m1finance.com", "coinbase.com", "robinhood.com"]
{
    fileinto "Finance/Investing";
    stop; 
}
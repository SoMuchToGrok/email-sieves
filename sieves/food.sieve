require ["fileinto", "imap4flags"];

# Commonly used food vendors
if address :domain "from" ["highkey.com", "highkeysnacks.com", "doordash.com", "instacart.com", "papajohns.com", "yelp.com"]
{
    fileinto "Food";
    stop;
}
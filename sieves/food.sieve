require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :domain "from" ["highkey.com", "highkeysnacks.com", "doordash.com", "instacart.com", "papajohns.com"]
{
    fileinto "Food";
    stop;
}
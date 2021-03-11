require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :domain "from" ["linkedin.com", "facebookmail.com", "facebook.com", "reddit.com", "twitter.com"]
{
    fileinto "Social";
    stop;
}
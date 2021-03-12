require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :matches :domain "from" ["*linkedin.com", "*facebookmail.com", "*facebook.com", "*reddit.com", 
"*twitter.com", "*instagram.com", "*pinterest.com", "*meetup.com"]
{
    fileinto "Social";
    stop;
}
require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :domain "from" ["@linkedin.com", "@facebookmail.com", "@reddit.com", "@twitter.com"]
{
    fileinto "Social"; 
}
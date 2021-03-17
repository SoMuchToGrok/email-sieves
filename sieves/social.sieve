require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used social networks
if address :matches :domain "from" ["*linkedin.com", "*facebookmail.com", "*facebook.com", "*reddit.com", "*twitter.com", "*instagram.com", "*pinterest.com", "*meetup.com", "*tumblr.com", "*ycombinator.com"]
{
    fileinto "Social";
    expire "day" "365";
    stop;
}
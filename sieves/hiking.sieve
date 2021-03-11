require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :domain "from" ["garmin.com", "gaiagps.com", "nextmilemeals.com"]
{
    fileinto "Hiking";
    stop;
}
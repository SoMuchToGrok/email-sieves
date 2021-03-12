require ["fileinto", "imap4flags"];

# Commonly used social networks
if address :matches :domain "from" ["*garmin.com", "*gaiagps.com", "*nextmilemeals.com", "*alltrails.com", "*opensummit.com"]
{
    fileinto "Hiking";
    stop;
}
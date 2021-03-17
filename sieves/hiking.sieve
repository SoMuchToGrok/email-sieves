require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used hiking services
if address :matches :domain "from" ["*garmin.com", "*gaiagps.com", "*nextmilemeals.com", "*alltrails.com", "*opensummit.com"]
{
    fileinto "Hiking";
    expire "day" "365";
    stop;
}
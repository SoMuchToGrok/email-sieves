require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used real estate platforms
if address :matches :domain "from" ["*zillow.com", "*better.com", "*redfin.com"]
{
    fileinto "Real Estate";
    expire "day" "365";
    stop; 
}
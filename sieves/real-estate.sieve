require ["fileinto", "imap4flags"];

# Commonly used real estate platforms
if address :matches :domain "from" ["*zillow.com", "*better.com", "*redfin.com"]
{
    fileinto "Real Estate";
    stop; 
}
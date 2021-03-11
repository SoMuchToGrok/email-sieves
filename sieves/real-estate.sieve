require ["fileinto", "imap4flags"];

# Commonly used real estate platforms
if address :domain "from" ["zillow.com", "better.com"]
{
    fileinto "Real Estate";
    stop; 
}
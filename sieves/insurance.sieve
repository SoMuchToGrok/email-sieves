require ["fileinto", "imap4flags"];

# Commonly used insurance providers
if address :matches :domain "from" ["*allstate.com", "*allstate-email.com", "*geico.com", "*geicomail.com", "*jminsure.com", 
"*travelguard.com", "*nationwide.com", "*progressive.com", "*statefarm.com", "*travelers.com"]
{
    fileinto "Finance/Insurance";
    stop;
}
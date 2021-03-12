require ["fileinto", "imap4flags"];

# Commonly used insurance providers
if address :domain "from" ["allstate.com", "allstate-email.com", "geico.com", "geicomail.com", "jminsure.com", "travelguard.com"]
{
    fileinto "Finance/Insurance";
    stop;
}
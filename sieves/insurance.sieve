require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used insurance providers
if address :matches :domain "from" ["*allstate.com", "*allstate-email.com", "*geico.com", "*geicomail.com", "*jminsure.com", 
"*travelguard.com", "*nationwide.com", "*progressive.com", "*statefarm.com", "*travelers.com", "*assurant.com"]
{
    fileinto "Finance/Insurance";
    expire "day" "365";
    stop;
}
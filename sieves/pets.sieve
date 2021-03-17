require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used pet vendors
if address :matches :domain "from" ["*petco.com", "*litterbox.com", "*chewy.com", "*litter-robot.com", "*foundanimals.org", 
"*openfarmpet.com", "*truthaboutpetfood.com", "*found.org"]
{
    fileinto "Pets";
    expire "day" "365";
    stop;
}
require ["fileinto", "imap4flags"];

# Commonly used pet vendors
if address :domain "from" ["@petco.com", "@litterbox.com", "@chewy.com", "@litter-robot.com", "@foundanimals.org", "@openfarmpet.com", "@truthaboutpetfood.com", "@found.org"]
{
    fileinto "Pets"; 
}
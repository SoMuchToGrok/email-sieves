require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used health services
if address :matches :domain "from" ["*carefirst.com", "*ibx.com", "*metlife.com", "*eyemed.com", "*vsp.com", "*teladoc.com", "*lenscrafters.com"]
{
    fileinto "Health";
    expire "day" "365";
    stop; 
}
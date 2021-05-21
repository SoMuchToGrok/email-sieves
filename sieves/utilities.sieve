require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used utilities
if address :matches :domain "from" ["*bge.com", "*comcast.net", "*xfinity.com", "*t-mobile.com", "*att.com", "*spectrum.com", "*verizon.com", "*verizonwireless.com", "*rentcafe.com", "*duke-energy.com"]
{
    fileinto "Finance/Utilities";
    expire "day" "365";
    stop;
}

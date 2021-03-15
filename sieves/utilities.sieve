require ["fileinto", "imap4flags"];


# Commonly used utilities
if address :matches :domain "from" ["*bge.com", "*comcast.net", "*xfinity.com", "*t-mobile.com", "*att.com", "*spectrum.com", "*verizon.com", "*verizonwireless.com", "*rentcafe.com"]
{
    fileinto "Finance/Utilities";
    stop;
}

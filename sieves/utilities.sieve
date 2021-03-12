require ["fileinto", "imap4flags"];


# Commonly used utilities
if address :matches :domain "from" ["*bge.com", "*comcast.net", "*xfinity.com", "*t-mobile.com"]
{
    fileinto "Finance/Utilities";
    stop;
}

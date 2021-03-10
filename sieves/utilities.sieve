require ["fileinto", "imap4flags"];


# Commonly used utilities
if address :domain "from" ["@bge.com", "@comcast.net", "@xfinity.com", "@t-mobile.com"]
{
    fileinto "Finance/Utilities"; 
}
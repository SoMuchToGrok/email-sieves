require ["fileinto", "imap4flags"];

# Commonly used health services
if address :domain "from" ["carefirst.com", "ibx.com"]
{
    fileinto "Health";
    stop; 
}
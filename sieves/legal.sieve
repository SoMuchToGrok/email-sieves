require ["fileinto", "imap4flags"];

# Commonly used legal platforms
if address :matches :domain "from" ["*docusign.net"]
{
    fileinto "Legal";
    stop;
}
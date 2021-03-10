require ["fileinto", "imap4flags"];

# Commonly used legal platforms
if address :domain "from" ["@docusign.net"]
{
    fileinto "Legal"; 
}
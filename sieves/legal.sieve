require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used legal platforms
if address :matches :domain "from" ["*docusign.net"]
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }
    fileinto "Legal";
    stop;
}
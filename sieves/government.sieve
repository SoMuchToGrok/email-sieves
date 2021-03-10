require ["fileinto", "imap4flags"];


if address :matches "from" ["*@*.gov"]
{
    fileinto "Government"; 
}
require ["fileinto", "imap4flags"];

if address :domain "from" ["recreation.gov"]
{
    fileinto "Hiking";
    stop; 
}

# This should catch all US government variations
elsif address :matches "from" ["*@*.gov"]
{
    fileinto "Government";
    stop;
}
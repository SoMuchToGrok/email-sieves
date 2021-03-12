require ["fileinto", "imap4flags"];

if address :matches :domain "from" ["*recreation.gov"]
{
    fileinto "Hiking";
    stop; 
}

# Technically not _exclusively_ a government domain, but most US states use them
if address :matches "from" ["*@*.us"]
{
    fileinto "Government";
    stop;
}

# This should catch all US government variations
elsif address :matches "from" ["*@*.gov"]
{
    fileinto "Government";
    stop;
}
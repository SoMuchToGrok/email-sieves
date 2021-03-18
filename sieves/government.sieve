require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Don't expire any emails here.

# Handle the national parks service
if address :matches :domain "from" ["*recreation.gov"]
{
    fileinto "Hiking";
    stop; 
}

# Technically not _exclusively_ a government domain, but most US states use them
if address :matches "from" ["*@*.us"]
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }
    fileinto "Government";
    stop;
}

# This should catch all US government variations
elsif address :matches "from" ["*@*.gov"]
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }
    fileinto "Government";
    stop;
}
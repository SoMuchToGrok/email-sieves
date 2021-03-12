require ["fileinto", "imap4flags"];

# If "list-unsubscribe" header present, flag for manual review
if exists "list-unsubscribe"
{
    addflag "\\Flagged-Ads";
}

# don't stop executing, allow other sieves to continue processing
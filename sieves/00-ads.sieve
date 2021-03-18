require ["fileinto", "imap4flags"];

# allowlist - do NOT tag as advertising
if address :matches :domain "from" ["*personalcapital.com", "*robinhood.com", "*nerdwallet.com"]
{
    # do nothing
}

# If "list-unsubscribe" header present, flag for easy manual review
# Ads is a label, NOT a folder
elsif exists "list-unsubscribe"
{
    fileinto "Ads";
}

# do NOT stop executing, allow other sieves to continue processing
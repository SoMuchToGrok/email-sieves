require ["fileinto", "imap4flags", "vnd.proton.expire"];

# If the string "statement" is found in the subject, set an expiration of 365 days.
# These are almost always informational/no-action emails and only useful for a few minutes, but set a high expiration to be safe.
if header :contains "subject" "statement"
{
    expire "day" "365";
}

# do NOT stop executing, allow other sieves to continue processing
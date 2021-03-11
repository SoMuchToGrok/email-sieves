require ["fileinto", "imap4flags", "regex"];

# Common subjects relevant to security
if header :contains "subject" ["security alert", "new login"] 
{
    fileinto "Security";
    stop;
}

# Commonly used security services
elsif address :domain "from" ["lastpass.com", "okta.com", "accounts.google.com", "1password.com", "haveibeenpwned.com", "nextdns.io"]
{
    fileinto "Security"; 
    stop;
}
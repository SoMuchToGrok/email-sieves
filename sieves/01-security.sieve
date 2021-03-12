require ["fileinto", "imap4flags", "regex"];

# Common subjects relevant to security
if header :contains "subject" ["security alert", "new login", "email address change"] 
{
    fileinto "Security";
    stop;
}

# Commonly used security services
elsif address :matches :domain "from" ["*lastpass.com", "*logme.in", "*okta.com", "*accounts.google.com", 
"*1password.com", "*haveibeenpwned.com", "*nextdns.io"]
{
    fileinto "Security"; 
    stop;
}
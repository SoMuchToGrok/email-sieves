require ["fileinto", "imap4flags"];

# Common subjects relevant to security events
if header :contains "subject" ["security alert", "security notification", "login", "sign-on", 
"sign-in", "email address", "email change", "password", "terms of service"] 
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
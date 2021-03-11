require ["fileinto", "imap4flags", "vnd.proton.expire"];


# Route PersonalCapital to main inbox, but delete after 30 days (no need to retain daily update emails)
if address :domain "from" "personalcapital.com"
{
    expire "day" "30";
    stop;
}

# Commonly used financial services
elsif address :domain "from" ["mtb.com", "mtbemail.com", "mandtbank.com", "synchronybank.com", "synchronyfinancial.com", "chase.com", "jpmorgan.com", "bankofamerica.com", "mtbalerts.com", "marcus.com", "nerdwallet.com", "visa.com", "intuit.com", "es.serve.com", "email.serve.com", "barclaycardus.com", "venmo.com", "ngfcu.us", "@xperian.com"]
{
    fileinto "Banking";
    stop;
}
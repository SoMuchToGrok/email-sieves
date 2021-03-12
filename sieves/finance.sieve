require ["fileinto", "imap4flags", "vnd.proton.expire"];


# Delete after 30 days (no need to retain routine update emails)
if address :domain "from" ["personalcapital.com", "nerdwallet.com", "experian.com", "equifax.com"]
{
    expire "day" "30";
}

# Commonly used financial services
elsif address :domain "from" ["mtb.com", "mtbemail.com", "mtbalerts.com", "mandtbank.com", "synchronybank.com", "synchronyfinancial.com", "chase.com", "jpmorgan.com", "bankofamerica.com", "marcus.com", "nerdwallet.com", "visa.com", "intuit.com", "es.serve.com", "email.serve.com", "barclaycardus.com", "venmo.com", "ngfcu.us", "personalcapital.com", "nerdwallet.com", "experian.com", "equifax.com"]
{
    fileinto "Finance/Banking";
    stop;
}
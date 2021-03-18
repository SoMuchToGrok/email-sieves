require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Delete after 30 days (no need to retain routine update emails)
# These emails get routed to the main inbox
if address :matches :domain "from" ["*personalcapital.com", "*nerdwallet.com", "*experian.com", "*equifax.com"]
{
    expire "day" "30";
    stop;
}

# Commonly used financial services
elsif address :matches :domain "from" ["*mtb.com", "*mtbemail.com", "*mtbalerts.com", "*mandtbank.com", "*synchronybank.com", "*synchronyfinancial.com", "*chase.com", 
"*jpmorgan.com", "*bankofamerica.com", "*marcus.com", "*visa.com", "*intuit.com", "*serve.com", "*barclaycardus.com", "*venmo.com", "*ngfcu.us", 
"*personalcapital.com", "*nerdwallet.com", "*experian.com", "*equifax.com", "*nelnet.net", "*wealthfront.com", "*paypal.com", "*citi.com", "*earnest.com"]
{
    fileinto "Finance/Banking";
    expire "day" "365";
    stop;
}
require ["fileinto", "imap4flags", "regex"];

# General catch all
if header :contains "subject" ["appointment"] 
{
    fileinto "Reservations";
    stop; 
}

# More targeted
elsif address :domain "from" ["seatme.com", "opentable.com", "resy.com"]
{
    fileinto "Reservations";
    stop; 
}
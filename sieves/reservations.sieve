require ["fileinto", "imap4flags"];

# General catch all
if header :contains "subject" ["appointment"] 
{
    fileinto "Reservations";
    stop; 
}

# More targeted
elsif address :matches :domain "from" ["*seatme.com", "*opentable.com", "*resy.com"]
{
    fileinto "Reservations";
    stop; 
}
require ["fileinto", "imap4flags", "vnd.proton.expire"];

# General catch all for appointments
if header :contains "subject" ["appointment"] 
{
    fileinto "Reservations";
    expire "day" "365";
    stop; 
}

# More targeted, specific reservation websites
elsif address :matches :domain "from" ["*seatme.com", "*opentable.com", "*resy.com", "*exploretock.com"]
{
    fileinto "Reservations";
    expire "day" "365";
    stop; 
}
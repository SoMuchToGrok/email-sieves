require ["fileinto", "extlists", "vnd.proton.expire"];  

# Checks if sender is in personal address book with a "Family" group association 
if header :list "from" ":addrbook:personal?label=Family"   
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }    
    fileinto "Family";
    stop;
}

# Checks if sender is in personal address book with a "Friend" group association 
elsif header :list "from" ":addrbook:personal?label=Friends"   
{
    # This is purely extra protection in the event the sieves don't work as expected
    if hasexpiration
    {
        unexpire;
    }    
    fileinto "Friends";
    stop;
}
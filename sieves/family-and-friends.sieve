require ["fileinto", "extlists"];  

# Checks if sender is in personal address book with a "Family" group association 
if header :list "from" ":addrbook:personal?label=Family"   
{    
    fileinto "Family";
    stop;
}

# Checks if sender is in personal address book with a "Friend" group association 
elsif header :list "from" ":addrbook:personal?label=Friends"   
{    
    fileinto "Friends";
    stop;
}
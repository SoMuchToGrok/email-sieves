require ["fileinto", "extlists", "vnd.proton.expire"];  

# This sieve is useful for testing. 
# Create a contact group and name it "Self". 
# Add your personal e-mail addresses to this group.
# You can alternatively use ":addrbook:myself" 
# but I like to test with external addresses.
if header :list "from" ":addrbook:personal?label=Self"   
{    
    expire "day" "180";
    if hasexpiration
    {
        unexpire;
    }
}
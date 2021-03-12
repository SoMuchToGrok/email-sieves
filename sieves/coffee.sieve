require ["fileinto", "imap4flags"];

# Commonly used coffee sites
if address :matches :domain "from" ["*counterculturecoffee.com", "*birdrockcoffee.com", "*jbccoffeeroasters.com", 
"*madcapcoffee.com", "*georgehowellcoffee.com", "*onyxcoffeelab.com", "*swiftcupcoffee.com", "*nespresso.com"]
{
    fileinto "Coffee"; 
    stop;
}
require ["fileinto", "imap4flags"];

# Commonly used travel services
if address :matches :domain "from" ["*southwest.com", "*hyatt.com", "*airbnb.com", 
"*lyftmail.com", "*uber.com", "*hertz.com", "*alaskaair.com", "*delta.com", 
"*goalamo.com", "*avis.com", "*ihg.com", "*kimptonhotels.com", "*hotels.com", 
"*marriott.com", "*tripadvisor.com", "*aa.com", "*autoslash.com"]
{
    fileinto "Travel";
    stop; 
}
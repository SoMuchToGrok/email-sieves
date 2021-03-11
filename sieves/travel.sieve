require ["fileinto", "imap4flags", "regex"];

# Commonly used travel services
if address :domain "from" ["southwest.com", "hyatt.com", "airbnb.com", "lyftmail.com", "uber.com", "hertz.com", "alaskaair.com", "delta.com", "goalamo.com", "avis.com", "ihg.com", "kimptonhotels.com"]
{
    fileinto "Travel";
    stop; 
}
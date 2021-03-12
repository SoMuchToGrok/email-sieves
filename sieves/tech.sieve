require ["fileinto", "imap4flags"];

if address :matches :domain "from" ["*digitalocean.com", "*github.com", 
"*cloudflare.com", "*docker.com", "*heroku.com", "*keybase.io", "*adobe.com", 
"*netflix.com", "*google.com", "*youtube.com", "*apple.com", "*roku.com", 
"*namecheap.com", "*microsoft.com", "*ebay.com"]
{
    fileinto "Tech";
    stop;
}

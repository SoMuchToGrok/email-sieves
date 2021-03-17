require ["fileinto", "imap4flags", "vnd.proton.expire"];

# Commonly used gaming services
if address :matches :domain "from" ["*steampowered.com", "*xbox.com", "*nintendo.net", "*nintendo.com", "*greenmangaming.com", 
"*epicgames.com", "*ea.com", "*playstationemail.com", "*rockstargames.com", "*twitch.tv", "*ubi.com", "*blizzard.com", "*bethesda.net"]
{
    fileinto "Gaming";
    expire "day" "365";
    stop; 
}
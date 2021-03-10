require ["fileinto", "imap4flags", "regex"];

# Commonly used gaming services
if address :domain "from" ["@steampowered.com", "@xbox.com", "@nintendo.net", "@nintendo.com", "@greenmangaming.com", "@epicgames.com", "@ea.com", "@playstationemail.com", "@rockstargames.com", "@twitch.tv", "@ubi.com", "@blizzard.com"]
{
    fileinto "Gaming"; 
}
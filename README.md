# Email Sieve Filters

My personal sieve filters for use with [ProtonMail](https://protonmail.com/).
Sieves are commonly referred to as email filters.

While these are personal sieves, most of these are general purpose and can be modified/extended as needed.

Contributions are accepted.

## Useful Links

- [ProtonMail Sieve Docs](https://protonmail.com/support/knowledge-base/sieve-advanced-custom-filters/)
- [Sieve Tutorial](https://p5r.uk/blog/2011/sieve-tutorial.html)
- [Sieve Wiki](http://sieve.info/)

## Testing

- [Web app for testing sieves](https://www.fastmail.com/cgi-bin/sievetest.pl)
  - NOTE - ensure NO personaly identifiable information is pasted into this tool
- When adding the sieve to ProtonMail, basic linting is performed server-side

## Deployment

- Manually copy and paste the definitions into [ProtonMail Filters](https://beta.protonmail.com/u/0/settings/filters#custom)
  - "Ads" sieve is executed 1st (00)
  - "Security" sieve is executed 2nd (01)
  - "Orders and Shipping" sieve is executed last (zz)

## To Do

- Improve local testing by hooking up [sieve script editor](https://github.com/thsmi/sieve) to [docker-mailserver](https://github.com/docker-mailserver/docker-mailserver/wiki/Configure-Sieve-filters) [local dev]
- Add Travis PR tests which check for syntax errors [CI]
  - Can likey have Travis run [docker-mailserver](https://github.com/docker-mailserver/docker-mailserver/wiki/Configure-Sieve-filters) and load the sieve filters into memory. Needs further investigation.
- Create test suite with mock email data (CI)
- Automate deployments [CD]
  - This is high LOE and has significant security implications.

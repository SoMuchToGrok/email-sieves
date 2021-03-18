# Email Sieve Filters

My personal sieve filters for use with [ProtonMail](https://protonmail.com/).
Sieves are commonly referred to as email filters.

While these are personal sieves, most of these are general purpose and can be modified/extended as needed.

Contributions are accepted.

## Design Philosophy

- Default to expiring emails. Few things truly need to be kept indefinitely.
  - As of 03-18-2021, ProtonMail supports a maximum expiration of 120 days. Setting a value greater than 120 days will be silently accepted with no server side errors, defaulting to the max of 120 days. Keep this in mind.
  - Biannual offsite backups should address what concerns may arise from this strategy.
- Scheduled/routine emails of importance (example - daily finance updates) should route to the main inbox, but expire quickly.
- Keep it simple and avoid having too many folders and labels.
  - A doctors appointment email and a restaurant reservation email can go to the same folder, and that's okay.
- No organizatonal system will ever be perfect. Expect _and_ accept occasional inefficiencies.
- Think carefully about the execution chain. Use stops when warranted.
- Use subject header parsing with caution, but don't be afraid. It's an immensely powerful routing mechanism.

## Useful Links

- [ProtonMail Sieve Docs](https://protonmail.com/support/knowledge-base/sieve-advanced-custom-filters/)
- [Sieve Tutorial](https://p5r.uk/blog/2011/sieve-tutorial.html)
- [Official Sieve Wiki](http://sieve.info/)

## Testing

- [Web app for testing sieves](https://www.fastmail.com/cgi-bin/sievetest.pl)
  - NOTE - ensure NO personaly identifiable information is pasted into this tool
  - Pro Tip - this tool is not aware of the "vnd.proton.expire" dependency. Remove it when testing with this tool.
- When adding the sieve to ProtonMail, basic linting is performed server-side

## Deployment

- Manually copy and paste the definitions into [ProtonMail Filters](https://beta.protonmail.com/u/0/settings/filters#custom)
  - "Ads" sieve is executed 1st (00)
  - "Security" sieve is executed 2nd (01)
  - "Statements" sieve is executed 3rd (02)
  - "Orders and Shipping" sieve is executed last (zz)

## To Do

- Improve local testing by hooking up [sieve script editor](https://github.com/thsmi/sieve) to [docker-mailserver](https://github.com/docker-mailserver/docker-mailserver/wiki/Configure-Sieve-filters) [local dev]
- Add Travis PR tests which check for syntax errors [CI]
  - Can likey have Travis run [docker-mailserver](https://github.com/docker-mailserver/docker-mailserver/wiki/Configure-Sieve-filters) and load the sieve filters into memory. Needs further investigation.
- Create test suite with mock email data (CI)
- Automate deployments [CD]
  - This is high LOE and has significant security implications.

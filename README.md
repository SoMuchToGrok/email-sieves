# Email Sieves

Personal email sieves for use with [ProtonMail](https://protonmail.com/).
Sieves are commonly referred to as email filters.

## Testing

- [Web app for testing sieves](https://www.fastmail.com/cgi-bin/sievetest.pl)
  - NOTE - ensure NO personaly identifiable information is pasted into this tool

## Useful Links

- [ProtonMail Sieve Docs](https://protonmail.com/support/knowledge-base/sieve-advanced-custom-filters/)
- [Sieve Tutorial](https://p5r.uk/blog/2011/sieve-tutorial.html)

## Deployment

- Manually copy and paste the definitions into ProtonMail
  - "Orders and shipping" sieve should be executed last.

## To Do

- Add CI tests which check for syntax errors
- Automate deployments. This is high LOE and has significant security implications.

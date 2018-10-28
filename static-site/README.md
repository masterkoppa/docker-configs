# Static Site Docker Compose
This provides a simple example for hosting a static site
using the nginx alpine image plus the nginx reverse
proxy + Let's Encrypt.

Simply set the ENV variables `HOST_NAMES` and `LETS_ENCRYPT_EMAIL` to
the appropriate values and store the html files in `./html`.
##!/bin/sh
# This is a comment!
echo Hello World   
vapor new test --template https://github.com/jhoughjr/vapor-auth-template
curl 'https://mkjwk.org/jwk/rsa?alg=RS256&use=sig&gen=sha256&size=2048' \
  -H 'accept: */*' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'priority: u=1, i' \
  -H 'referer: https://mkjwk.org/' \
  -H 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
  -o "keypair.jwks"

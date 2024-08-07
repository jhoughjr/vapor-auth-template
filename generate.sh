##!/bin/sh
# This is a comment!
echo Hello World   
vapor new test --template https://github.com/jhoughjr/vapor-auth-template
curl 'https://mkjwk.org/jwk/rsa?alg=RS256&use=sig&gen=sha256&size=2048' \
  -o test/keypair.jwks
 
  

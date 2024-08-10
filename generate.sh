##!/bin/bash
# This is a comment!
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo Hello World
vapor new $1 --template https://github.com/jhoughjr/vapor-auth-template.git
echo "${GREEN}Generating new jwks from mkjwk.org ...${NC}"
 curl -s 'https://mkjwk.org/jwk/rsa?alg=RS256&use=sig&gen=sha256&size=2048' \
 | jq ."jwks" >> ./keypair.jwks

echo "${YELLOW}Done.${NC}"
echo "${GREEN}Starting development server...  ${NC}"
cd ./$1/
swift run App serve --env development
 
  

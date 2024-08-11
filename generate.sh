##!/bin/bash
# This is a comment!
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

REQUIRED_PKG="jq"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG
fi
echo Generating project from template....
vapor new $1 --template https://github.com/jhoughjr/vapor-auth-template.git
cd ./$1/
echo "${GREEN}Generating new jwks from mkjwk.org ...${NC}"
 curl -s 'https://mkjwk.org/jwk/rsa?alg=RS256&use=sig&gen=sha256&size=2048' \
 | jq ."jwks" >> ./keypair.jwks

echo "${YELLOW}Done.${NC}"
 
  

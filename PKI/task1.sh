#!/bin/bash

# Move into the working directory and copy the openssl.cnf

cp /usr/lib/ssl/openssl.cnf .

# Make the appropriate folders
# This layout is in openssl.cnf
printf "\n\nMaking Directory Structure\n\n"
mkdir demoCA demoCA/certs demoCA/crl demoCA/newcerts
touch demoCA/index.txt
echo 1000 >> demoCA/serial

# Create the self signed CA certificate
printf "\n\nGenerating self signed CA Certificate\n\n"
openssl req -new -x509 -keyout ca.key -out ca.crt -config openssl.cnf

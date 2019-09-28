#!/bin/bash

# ::::: Step 1 :::::
# generate the rsa keypair for the server
openssl genrsa -aes128 -out server.key 1024
printf "Server Keypair Created"

# print the private key to the console
printf "\n\nPrinting Key To Console\n\n"
openssl rsa -in server.key -text

# ::::: Step 2 :::::
# generate the server certificate signing request
printf "\n\nGenerating the Server Certificate Signing Request\n\n"
openssl req -new -key server.key -out server.csr -config openssl.cnf

# ::::: Step 3 :::::
# let the CA sign the certificate
printf "\n\nSigning Certificate with ca.crt\n\n"
openssl ca -in server.csr -out server.crt -cert ca.crt -keyfile ca.key -config openssl.cnf

#!/bin/bash

# Combine the secret key and certificate into one file
printf "\n\nCombining server key and certificate\n\n"
cp server.key server.pem
cat server.crt >> server.pem

# Launch firefox
printf "\n\nOpening firefox to 127.0.0.1:4433\n\n"
firefox https://SEEDPKILab2018.com:4433 1> /dev/null 2>&1 &

# Launch the web server using server.pem
printf "\n\nLaunching web server\n\n"
openssl s_server -cert server.pem -www 

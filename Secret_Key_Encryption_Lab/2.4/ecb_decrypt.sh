#!/bin/sh

# Decrypts a file but leaves padding
# 
# Usage: bash ecb_decrypt.sh <infile>
#

infile=$1
key="00112233445566778899aabbccddeeff"

openssl enc -aes-128-ecb -d -in ${infile} -out "decrypted_${infile}" -K ${key} -nopad

#!/bin/bash

# Encrypts a text file using a monoalphabetic
# substitution cipher
#
# Usage: bash encrypt_text_file.sh <infile>
#

infile=$1
alphabet="abcdefghijklmnopqrstuvwxyz"

# generate a key
key=$(./monoalphabetic_keygen.py)
echo "Key: ${key}"

# clean the file
bash clean_article.sh ${infile} "cleaned_${infile}" 

# encrypt and output to a file
tr ${alphabet} ${key} < "cleaned_${infile}" > "encrypted_${infile}"

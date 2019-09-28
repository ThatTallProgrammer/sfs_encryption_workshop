#!/bin/bash

# Encrypt a bitmap image using 
# AES-128 in ECB mode
# 
# Usage: bash ecb_img_encrypt.sh <infile> <desired output file> 

infile=$1
outfile=$2

openssl enc -aes-128-ecb -e -in $infile -out $outfile -K 00112233445566778889abbccddeeff

head -c 54 ${infile} > header
tail -c +54 ${outfile} > body

cat header body > ${outfile}

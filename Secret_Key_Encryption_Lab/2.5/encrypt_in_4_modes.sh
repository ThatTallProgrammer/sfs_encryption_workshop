#!/bin/bash 

# Encrypt a file in four different modes
# 	ecb
# 	cbc
# 	cfb
# 	ofb
#
# Usage: bash encrypt_in_4_modes.sh <infile>
#
# Outputs encrypted files to the respective directory
#

infile=$1

key="00112233445566778899aabbccddeeff"
iv="0102030405060708"

# ECB encryption
openssl enc -aes-128-ecb -e -in ${infile} -out "ecb_${infile}" -K ${key}

# CBC encryption
openssl enc -aes-128-cbc -e -in ${infile} -out "cbc_${infile}" -K ${key} -iv ${iv}

# CFB encryption
openssl enc -aes-128-cfb -e -in ${infile} -out "cfb_${infile}" -K ${key} -iv ${iv}

# OFB encryption 
openssl enc -aes-128-ofb -e -in ${infile} -out "ofb_${infile}" -K ${key} -iv ${iv}


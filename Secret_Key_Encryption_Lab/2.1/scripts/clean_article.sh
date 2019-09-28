#!/bin/bash 

# Converts all capital letters to lowercase 
# Removes all non-alphabetic characters
# Outputs cleaned file to a new file
#
# Usage: bash clean_article.sh <input file> <desired output file>
# 

infile=$1
outfile=$2

tr [:upper:] [:lower:] < $infile | tr -cd '[a-z][\n][:space:]' > $outfile

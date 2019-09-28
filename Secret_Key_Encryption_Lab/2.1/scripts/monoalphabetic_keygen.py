#!/usr/bin/python3

from random import shuffle

if __name__ == "__main__":
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	
	# start with all possible characters
	key = list(alphabet)
	
	# randomize the characters
	shuffle(key)

	# join into a new string
	key = "".join(key)
	
	# print the key to the console
	print(key)

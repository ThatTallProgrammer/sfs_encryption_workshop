#!/usr/bin/python3 

import sys

def print_usage():
	print("Usage: python3 gen_file_of_size_n.py <# of bytes>")


if __name__ == "__main__":
	if len(sys.argv) != 2:
		print_usage()
		sys.exit(1)
	
	size = sys.argv[1]

	try:
		s = "a" * int(size)
	except ValueError:
		print_usage()
		sys.exit(1)

	with open("{}_byte_file".format(size), 'w') as f:
		f.write(s)	

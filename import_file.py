#!/usr/bin/python

import re
import csv

def isnumeric(s):
	m = re.match(r"^-?[0-9]+\.?[0-9]*$", s)
	if m:
		return True
	else:
		return False

def printval(v):
	if isnumeric(v):
		return v
	else:
		return "'"+re.sub('\'','\'\'',v)+"'"
		

def do_file(filename, tabname, columns=""):
	print "-- %s " % tabname
	with open(filename, 'rb') as csvfile:
		reader = csv.reader(csvfile, delimiter=',', quotechar='|')
		count=0
		for row in reader:
			print "INSERT INTO %s %s VALUES" % (tabname, columns)
			#if count == 0:
			#	print ",".join([ str(unicode(str(x)).isnumeric()) for x in row ])
			count=count+1
			print '(' + ",".join([ printval(x) for x in row]) + ');'
		print "-- %d records" % count

if __name__ == "__main__":
	import sys
	print "BEGIN TRANSACTION;"
	do_file(*sys.argv[1:])
	print "COMMIT;"


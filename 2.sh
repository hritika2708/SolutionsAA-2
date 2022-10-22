#!/bin/bash

# Without Company headers
awk -F ';' '{print $4 "," $5}' AA_test.txt > AA_test.csv

# With Company headers
awk -F ';' '{if ( $1=="" || $4=="" )
				print $1
			else 
				print $4 "," $5}' AA_test.txt > AA_test_header.csv;

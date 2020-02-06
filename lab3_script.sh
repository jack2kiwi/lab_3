#!/bin/bash
# Author : Jack Holland
# Date : 2/6/2020

#Problem 1 Code:

#This will prompt the user to enter a file and store it
echo "Enter a file name : "
read file

#This will prompt the user to enter a regular expression and store it
echo "Enter a regular expression : "
read regExpression

#Searches the given file with the given expression
grep $regExpression $file

#Outputs number of phone numbers in regex_practice.txt
grep -E -c "[0-9]{3}\-[0-9]{3}\-[0-9]{4}" regex_practice.txt

#Outputs number of emails in regex_practice.txt
grep -E -c ".+@.+(\.com|\.net|\.edu|\.gov)" regex_practice.txt

#Outputs all phone numbers that begin with 303
grep -E -o "303\-[0-9]{3}\-[0-9]{4}" regex_practice.txt

#Stores emails from @geocities.com into a file called email_results.txt
grep -E "@geocities.com$" regex_practice.txt >> email_results.txt



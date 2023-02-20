#This Script is used for finding the length of the string

#! /bin/bash

#variables declaring
string_var="Hello Everyone! My Name is MohanKumar Gopavaram, I'm working in Ericsson India Global Services Private Limited, Mahadevpura, Bangalore"
#This command will print the string_var value 
echo "The String value is:" ${string_var} 
#This command will print the Length of the string used in the string_var value
echo "The Length of the string is:" ${#string_var} 
#This command will skip the first 17 characters from the main string and print the remaining string
echo ${string_var:16} 
#This command will skip the first 17 characters from the main string and print only 21 charc from the remaining string
echo ${string_var:16:21} 
#This command will print last 8 characters
echo ${string_var: -9} 
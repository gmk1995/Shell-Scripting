#This Shell Scripting is using for Practising the read command with Array. With Array we can display specific Charc based on Index number

#! /bin/bash

echo " Please Enter The DevOps Tool Names "
read -a DevOpsTool
echo "The 5th Element of the DevOps Tools is:" ${DevOpsTool[4]}
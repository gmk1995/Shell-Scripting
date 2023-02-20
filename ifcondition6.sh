#This Shell Script Is For Installing Tomcat Server

#! /bin/bash

echo " Enter The Software Name To Check the Verion"
read software
if [ $? -eq 0 ]
then 
echo " $software Is Already Installed ... "
else
echo " $software is not installed. Install the Software To Check The Version ..."
fi
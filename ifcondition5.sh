#This Shell Script Is For Installing Tomcat Server

#! /bin/bash

java -version
if [ $? -eq 0 ]
then 
echo " Java Is Already Installed ..."
else
echo " First Install The Java And Then Install Tomcat Server ..."
fi
#! /bin/bash

#Check if Java is installed 

if java -version 2>/dev/null | grep -q "java version";
then
echo "Java is already Installed"
else
#Install Java

echo "Java is not Installed.. Installing Java..."

sudo apt update

sudo apt install openjdk-11-jre-headless -y 

java -version

echo "Java in installed Successfully"

fi
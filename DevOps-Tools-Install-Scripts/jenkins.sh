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

#Installing Jenkins

echo "Jenkins Installation is Started"

#This is the Debian package repository of Jenkins to automate installation and upgrade. To use this repository, first add the key to your system:

 curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

#Adding a Jenkins apt repository entry:

echo "Adding a Jenkins apt repository entry"

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

#Update your local package index, then finally install Jenkins:

sudo apt-get update
sudo apt-get install fontconfig openjdk-11-jre -y
sudo apt-get install jenkins -y

systemctl status jenkins

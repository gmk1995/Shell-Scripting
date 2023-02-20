#This Shell Script is used to check the UserName is Available or not. If Not It will Create a user and Password

#! /bin/bash

echo $0

echo "Verify the User is Available in Sever"
echo " Enter The UserName You Want To Create "
read username
if (( id -eq $username ))
then
echo " User Is Already Present in Server"
else
echo " $username Is Not Created, Now $username Will be Created "
#Creating The User
useradd $username
#Creating Password to the User
passwd $username
#Adding User to the Sudo Group
usermod -aG sudo $username
#Checking Whether User is created or not successfully
cat /etc/passwd | grep -i $username
$?
echo "$username is Created and Added to /etc/passwd"
ls /home/ | grep -i "$username"
$?
echo "$username home directory is created Successfully"
echo "User Is Successfully Created"
fi

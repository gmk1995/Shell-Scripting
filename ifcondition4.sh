#This Shell Script is Accept The FileName From The User And Check Whether the File is Present or Not In The Current Directory. If The FileName is Existed It Will  Display the Content in the File, If Not It Will Create The Empty File

#! /bin/bash
 
echo " Please Enter the FileName Which You Want TO Check In The Current Directory .... "
read filename
if [ -f $filename ]
then 
echo " The File Is Present In The Current Working Directory .... "
echo " Displaying The Content In $filename ... "
cat $filename
else
echo " The File is Not Present In The Current Working Directory .... "
echo " $filename is Creating ... "
touch $filename
fi
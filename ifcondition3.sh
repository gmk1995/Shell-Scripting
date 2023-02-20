#This Shell Script is Accept The FileName From The User And Check Whether the File is Present or Not In The Current Directory

#! /bin/bash

echo " Please Enter the FileName Which You Want TO Check In The Current Directory ...."
read filename
if [ -f $filename ]
then 
echo " The File Is Present In The Current Working Directory .... "
else
echo " The File is Not Present In The Current Working Directory .... "
fi
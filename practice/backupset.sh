#! /bin/bash

ZIP_FOLDER="/var/www/html/beta"
ZIP_FILE="xfusioncorp_beta.zip"
DESTINATION_LOCATION="/backup/"

#Creating Zip archive and saving into Destination Location
zip -r ${ZIP_FILE} ${ZIP_FOLDER} > ${DESTINATION_LOCATION}

#Copying the Zip Archive to backup server
#Before that we need have copy the ssh key to the backup server
scp -o StrictHostKeyChecking=no /scripts/${ZIP_FILE} mohan@192.168.18.02:${DESTINATION_LOCATION}/${ZIP_FILE}
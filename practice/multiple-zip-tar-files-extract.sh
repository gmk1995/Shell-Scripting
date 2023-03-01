#! /bin/bash

dir="/root/sampledir"

if [ "$(ls -A $dir)" ]; then
  echo "Directory is not empty. Cleaning up..."
  rm -r $dir/*
else
  echo "Directory is empty"
fi

# Set the name of the zip file
zip_file="custom_swdp-eda2-npe_ca-1.0.0.zip"

# Extract the zip file to /tmp folder
unzip -q "$zip_file" -d /tmp

# Untar the required files from x.zip and y.zip
cd /tmp
ls -lrth 
for f in CXP9042379_1-R1A.zip CXP9042279_1-R1A.zip; do
  if [ -f "$f" ]; then
    unzip -q "$f" -d "${f%.zip}"
    tar -xvzf "${f%.zip}"/*.tgz -C "${f%.zip}"
    tar -zxvf "${f%.zip}"/*.tar.gz -C "${f%.zip}"
  fi
done
ls -lrth
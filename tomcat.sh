#! /bin/bash

# Define the URL of the TOMCAT package to download

TOMCAT_URL="https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz"

EXTRACT_PATH="/tmp/tomcat-package"

echo "Downloading the Tomcat Package From the from ${TOMCAT_URL}"

curl -sSL "${TOMCAT_URL}" -o /tmp/apache-tomcat-9.0.71.tar.gz

echo "$?"

echo "Extracting the TOMCAT Package from the ${EXTRACT_PATH}"

mkdir -p "${EXTRACT_PATH}"

tar -zxvf /tmp/apache-tomcat-9.0.71.tar.gz -C "${EXTRACT_PATH}"

echo "starting the tomcat services...."

sh /tmp/tomcat-package/apache-tomcat-9.0.71/bin/catalina.sh start

echo "$?"



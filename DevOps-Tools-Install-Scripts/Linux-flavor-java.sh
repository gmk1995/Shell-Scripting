#!/bin/bash

# Check Linux flavor
if [[ "$(cat /etc/*-release | grep ^ID= | awk -F= '{print $2}' | tr -d '\n')" = "ubuntu" ]]; then
  # Install Java on Ubuntu
  echo "Installing Java on Ubuntu..."
  sudo apt-get update
  sudo apt-get install default-jre
elif [[ "$(cat /etc/*-release | grep ^ID= | awk -F= '{print $2}' | tr -d '\n')" = "centos" ]]; then
  # Install Java on CentOS
  echo "Installing Java on CentOS..."
  sudo yum install java-1.8.0-openjdk
else
  echo "Unsupported Linux flavor."
  exit 1
fi

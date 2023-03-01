#!/bin/bash

dir="/root/sampledir"

if [ "$(ls -A $dir)" ]; then
  echo "Directory is not empty. Cleaning up..."
  rm -r $dir/*
else
  echo "Directory is empty"
fi

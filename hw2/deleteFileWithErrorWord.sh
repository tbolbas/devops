#!/bin/bash
echo 'Enter filename:'
read File
if grep -q "error" "$File"
then
  rm  "$File"
  echo "File deleted"
else
  echo "File doesn't contain error"
fi

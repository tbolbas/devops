#!/bin/bash
echo "Enter the username to be created:"
read User
if id "$User" >/dev/null 2>&1
then
  echo "User already exists"
else
  useradd "$User" -d /home/"$User" -m
  echo "New userid "$User" has been created"
fi

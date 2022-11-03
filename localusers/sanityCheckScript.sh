#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not.

# Display UID
echo "Your UID is ${UID}"

# Display the username
USERNAME=$(whoami)
echo "Your username is $USERNAME"

# Display if the user is the root or not

if [ ${UID} -eq 0 ]
then 
	echo "You are root"
else
	echo "You are not root"
fi

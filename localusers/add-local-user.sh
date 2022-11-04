#!/bin/bash


# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then 
	echo "Please run with sudo or as root."
	exit 1
fi

# Get the username (login).
read -p "Enter the username to create: " USER_NAME

# Get the real name (contents for the description field).
read -p "Enter the name of the person or application that will be using this acconut: " COMMENT
 
# Get the password.
read -p "Enter the password to use for the account: " PASSWORD

# Create the user with the password.
useradd -c "${COMMENT}" -m ${USER_NAME}
echo {PASSWORD} | passwd --stdin ${USER_NAME}

# Force password change on first login.
passwd -e ${USER_NAME}

# Check to see if the useradd command succeeded.


# Set the password.


# Check to see if the passwd command succeeded.


# Force password change on first login.


# Display the username, password, and the host where the user was created.

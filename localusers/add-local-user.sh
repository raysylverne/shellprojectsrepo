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

# Force password change on first login.
passwd -e ${USER_NAME}

# Check to see if the useradd command succeeded.
# We don't want to tell the user an account has been created when it hasn't 
if [[ "${?}" -ne 0 ]]
then 
      echo "The user account was not created"
      exit 1
fi

# Set the password.

echo {PASSWORD} | passwd --stdin ${USER_NAME}

# Check to see if the passwd command succeeded.
if [[ "${?}" -ne 0 ]]
then
      echo "The password could not be sent see Sys Admin"
      exit 1
fi
# Force password change on first login.
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo
echo "The user account was succefully created"
echo "Securely provide the user with their login credentials below"
echo
echo "username: ${USER_NAME}"
echo "passwd:  ${PASSWORD}"
echo
exit 0

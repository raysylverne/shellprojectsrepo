#!/bin/bash


# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user or not.

# Display the UID.
	echo "Your UID is ${UID}"

# Only display if the UID does NOT match 1000.
UID_TEST='1002'

if [[ "${UID}" -ne "${UID_TEST}" ]]
then 	
	echo "Your UID is not ${UID_TEST}"
	exit 1
fi

# Display the username.
USER_NAME=$(whoami)

# Test is the command succeeded
if [[ "${?}" -ne 0 ]]
then 
	echo "The id command did not execute succesfully"
	exit 1
fi
echo "Your username is ${USER_NAME}"


# You can use a string test conditional.
USER_NAME_TEST='cloud_user'

if [[ "${USER_NAME_TEST}" = "${USER_NAME}" ]]
then 
	echo "Your username  matches ${USER_NAME_TEST}"
	exit 1
fi

# Test for != (not equal) for the string.
if [[ ${USER_NAME} != ${USER_NAME_TEST} ]]
then
	echo "Your username does not match ${USER_NAME}"
exit 1
fi

exit 0

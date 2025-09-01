#!/bin/bash

if [[ $# -ne 3 ]]; then 
echo "1.username 2.home directory 3.group "
exit 1
fi
USERNAME=$1
HOMEDIR=$2
GROUPNAME=$3

getent group "$GROUPNAME" > /dev/null || groupadd "$GROUPNAME"
useradd -m -d "$HOMEDIR" -g "$GROUPNAME" -s /bin/bash "$USERNAME"
passwd "$USERNAME"

#!/usr/bin/env bash
EXTRA_SCRIPT="";

while getopts s: option
do
 case "${option}"
 in
 s) EXTRA_SCRIPT=${OPTARG};;
 esac
done

if [ -f "$EXTRA_SCRIPT" ]; then
	bash $EXTRA_SCRIPT;
fi

USERNAME=${USERNAME:-"openresty"};
UID=${UID:-500};
GROUPNAME=${GROUPNAME:-"openresty"};
GID=${GID:-500};
id -g $GROUPNAME &>/dev/null || (groupadd -r $GROUPNAME -g $GID && echo "Created group $GROUPNAME:$GID");
id -u $USERNAME &>/dev/null || (useradd $USERNAME -rMN -u $UID -g $GID && echo "Created user $USERNAME:$UID");

/usr/local/openresty/bin/openresty -g "daemon off;"

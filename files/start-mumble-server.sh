#!/bin/bash


if env | grep -q ^MUMBLE_NO_UPDATE=
then
	echo Update of mumble-server disabled.
else
	echo Updating mumble-server
	apt-get update
	apt-get upgrade -y mumble-server
	apt-get -y clean
fi

if env | grep -q ^MUMBLE_SUPW=
then
	murmurd -supw $MUMBLE_SUPW
fi

echo Starting mumble-server
murmurd -fg

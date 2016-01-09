#!/bin/bash

show_help()
{
	echo "=====[ pax_bite provides add/delete/view the binary of PaX flags ]========"
	echo "$0 -h[help] -e[enable] -d[disable] -v[view] [PaX_file_list]"
	exit 1
}

enable_pax_flags()
{
while read line; do
	IFS=';' read -r BIN FLAGS <<< "$line"
	$PAXCTL -d $BIN
	$PAXCTL -C $BIN
	echo "Adding PaX flags "$FLAGS" onto binary "$BIN""
	$PAXCTL -$FLAGS $BIN
done < $FILE
}

disable_pax_flags()
{
while read line; do
	IFS=';' read -r BIN FLAGS <<< "$line"
	echo "Deleting PaX flags from binary "$BIN""
	$PAXCTL -d $BIN
done < $FILE
}

view_pax_flags()
{
while read line; do
	IFS=';' read -r BIN FLAGS <<< "$line"
	$PAXCTL -v $BIN
done < $FILE
}

FILE=$2
if [ ! -f $FILE ]; then
	echo "PaX flags file list not found!"
	exit 1
fi

PAXCTL=`which paxctl-ng`
if [ $? -eq 0 ]; then
	echo -e "*- elfix package:\e[92m OK\e[0m"
else
        echo -e "*- elfix package:\e[91m FAILED\e[0m, plz check..."
	exit 1
fi

while getopts "h?edv:" opt; do
    case "$opt" in
    h|\?)
        show_help
        exit 0
        ;;
    e)  enable_pax_flags
        ;;
    d)  disable_pax_flags
        ;;
    v)  view_pax_flags
	;;
    esac
done




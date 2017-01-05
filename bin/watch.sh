#!/usr/bin/env bash
# usage: watch [command] [sleep duration]
# http://daniel.lubarov.com/simple-watch-script-for-osx
echo "Running: $1"
echo "Sleeping ${2:-5} seconds before retry."
while :; do 
	date
	bash -c "$1"
	sleep ${2:-5}
	clear
done

#!/usr/bin/env bash
# usage: watch [command] [sleep duration]
# http://daniel.lubarov.com/simple-watch-script-for-osx
while :; do 
	clear
	date
	bash -c "$1"
	sleep ${2:-1}
done

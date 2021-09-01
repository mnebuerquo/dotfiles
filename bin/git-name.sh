#!/bin/sh

if git remote -v | grep "reallybigspiders" ; then
	echo "rbs"
	git config user.name "Sherman"
	git config user.email "sherman@stellartechworks.com"
	git config user.username "mnebuerquo"
else
	echo "home"
	git config user.name "mnebuerquo"
	git config user.email "mnebuerquo@users.noreply.github.com"
	git config user.username "mnebuerquo"
fi

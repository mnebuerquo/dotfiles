#!/bin/sh

if git remote -v | grep "spatial" ; then
	echo "sherman"
	git config user.name "sherman"
	git config user.email "sherman@spatial.ai"
	git config user.username "sherman"
else
	echo "other"
	git config user.name "mnebuerquo"
	git config user.email "sherman.adelson@gmail.com"
	git config user.username "mnebuerquo"
fi

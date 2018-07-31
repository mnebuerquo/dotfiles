#!/bin/sh

if git remote -v | grep "kroger" ; then
	echo "kroger"
	git config user.name "kon7726"
	git config user.email "sherman.adelson@kroger.com"
	git config user.username "sherman"
else
	echo "home"
	git config user.name "mnebuerquo"
	git config user.email "mnebuerquo@users.noreply.github.com"
	git config user.username "mnebuerquo"
fi

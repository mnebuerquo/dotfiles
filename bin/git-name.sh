#!/bin/sh

if git remote -v | grep "kroger" ; then
	echo "kroger"
	git config user.name "sherman"
	git config user.email "sherman.adelson@kroger.com"
	git config user.username "sa35907"
else
	echo "other"
	git config user.name "mnebuerquo"
	git config user.email "sherman.adelson@gmail.com"
	git config user.username "mnebuerquo"
fi

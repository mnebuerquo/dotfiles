#!/bin/sh

if git remote -v | grep "spatial" ; then
	echo "spatial"
	git config user.name "shermanadelson"
	git config user.email "sherman@spatial.ai"
	git config user.username "shermanadelson"
else
	echo "home"
	git config user.name "mnebuerquo"
	git config user.email "mnebuerquo@users.noreply.github.com"
	git config user.username "mnebuerquo"
fi

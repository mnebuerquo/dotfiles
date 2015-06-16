#!/bin/bash
#
# https://faq.i3wm.org/question/2332/flexible-monitor-setup/ 
#

for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
		if [[ $output =~ ^LVDS.*$ ]]; then
						LVDS=$output
		fi
done

PREVIOUS="$LVDS"
PRIMARY="--primary"
for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
	if [[ ! $output =~ ^LVDS.*$ ]]; then
		CMD="xrandr --output $LVDS --auto --output $output \
			--pos 0x0 --auto --right-of $PREVIOUS $PRIMARY"
		echo "$CMD"
		eval "$CMD"
		PRIMARY=""
		PREVIOUS="$output"
	fi
done


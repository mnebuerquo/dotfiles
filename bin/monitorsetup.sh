#!/bin/bash
#
# https://faq.i3wm.org/question/2332/flexible-monitor-setup/ 
#

case $1 in
	left)
		DIRECTION="--left-of"
		;;
	right)
		DIRECTION="--right-of"
		;;
	*)
		echo "Valid options are left, right."
		exit 1
		;;
esac

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
			--pos 0x0 --auto $DIRECTION $PREVIOUS $PRIMARY"
		echo "$CMD"
		eval "$CMD"
		PRIMARY=""
		PREVIOUS="$output"
	fi
done


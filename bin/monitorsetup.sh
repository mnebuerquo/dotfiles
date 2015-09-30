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

CMD="xrandr "
PREVIOUS=""
FIRST=""
for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
	if [[ $output =~ ^(eDP|LVDS).*$ ]]; then
		echo "Detected built-in screen: $output"
		CMD="$CMD --output $output --auto --primary"
		FIRST=$output
		PREVIOUS=$output
	fi
done


for output in $(xrandr | grep '\Wconnected' | awk '{ print $1 }'); do
	if [ "$output" != "$FIRST" ]; then
		CMD="$CMD --output $output --pos 0x0 --auto "
		if [ ! -z "$PREVIOUS" ]; then
			CMD="$CMD $DIRECTION $PREVIOUS "
		fi
		PREVIOUS="$output"
	fi
done

for output in $(xrandr | grep '\Wdisconnected' | awk '{ print $1 }'); do
	if [[ ! $output =~ ^(eDP|LVDS).*$ ]]; then
		CMD="$CMD --output $output --off "
	fi
done

echo "$CMD"
eval "$CMD"



#!/bin/sh

next_salah=$(bilal next | awk '{print $1}')
time_value=$(bilal current | awk -F '(' '{print $2}' | awk 'BEGIN{OFS=" ";} {print $1}')
time_scale=$(bilal current | awk -F '(' '{print $2}' | awk 'BEGIN{OFS=" ";} {print $2}')
if [ "$time_scale" = "hours" ]; then
	hours=$(printf "%s" "$time_value" | awk -F ':' '{print $1}')
	minutes=$(printf "%s" "$time_value" | awk -F ':' '{print $2}')
	[ "$(printf "%s" "$hours" | wc -c)" -lt 2 ] && hours="0$hours"
	[ "$(printf "%s" "$minutes" | wc -c)" -lt 2 ] && minutes="0$minutes"
	time_value="$hours:$minutes"
elif [ "$time_scale" = "minutes" ]; then
	[ "$(printf "%s" "$time_value" | wc -c)" -lt 2 ] && time_value="0$time_value"
	time_value="00:$time_value"
fi
printf "%s until %s\n" "$time_value" "$next_salah"

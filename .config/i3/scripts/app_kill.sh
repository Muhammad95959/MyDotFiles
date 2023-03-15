#!/bin/sh

# Get list of running applications sorted by memory usage
apps=$(ps -eo pid,%mem,comm --sort=-%mem | awk '{if ($1 != "PID") print $0}')

# Use rofi to display list of running applications
selected_app=$(printf '%s' "$apps" | rofi -dmenu | awk '{print $1}')

# If an application was selected, prompt user to confirm before killing it
if [ -n "$selected_app" ]; then
    app_name=$(ps -p "$selected_app" -o comm=)
    # msg=$(echo "Are you sure you want to kill $app_name?")
    choice=$(printf "\t\t    Yes\n\t\t    No" | rofi -dmenu \
        -mesg "Are you sure you want to kill $app_name?" \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
        -theme-str 'listview { scrollbar: false; }'
)
    if [ "$choice" = "Yes" ]; then
        kill "$selected_app"
    fi
fi

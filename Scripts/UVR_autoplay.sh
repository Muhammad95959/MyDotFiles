inotifywait -m ~/Downloads -e create -e moved_to |
	while read -r file; do
		if [[ "$file" =~ .*\.wav$ ]]; then
      i3-msg "workspace 9"
      sleep 0.5
      i3-msg "kill"
      xdotool mousemove 960 535 click 1 sleep 0.02 mousemove restore
      i3-msg "workspace back_and_forth"
		fi
	done

inotifywait -m ~/Downloads -e create -e moved_to |
	while read -r file; do
		if [[ "$file" =~ .*\.wav$ ]]; then
      i3-msg "workspace 9"
      sleep 0.3
      i3-msg "kill"
      sleep 0.3
      xdotool mousemove 960 535 click 1 sleep 0.02 mousemove restore
      sleep 0.3
      i3-msg "workspace back_and_forth"
		fi
	done

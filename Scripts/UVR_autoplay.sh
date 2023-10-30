inotifywait -m ~/Downloads -e create -e moved_to |
  while read -r file; do
    if [[ "$file" =~ .*\.wav$ ]]; then
      sleep 6
      i3-msg "workspace 9"
      sleep 0.3
      i3-msg "kill"
      sleep 0.3
      xdotool mousemove 960 535 click 1 sleep 0.02 mousemove restore
      sleep 0.3
      i3-msg "workspace back_and_forth"
      # current_workspace=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true).num')
      # if [ "$current_workspace" -ne "9" ]; then
      #   i3-msg "workspace back_and_forth"
      # fi
    fi
  done

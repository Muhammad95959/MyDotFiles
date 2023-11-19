chosen=$(printf "\
Mustard on Deep Charcoal
Canary Yellow on Black
White on Black
Black on White
Black on Beige\
" | rofi -dmenu -i -theme ~/.config/rofi/zathura_recolor.rasi -p "choose a theme: ")

case "$chosen" in
"Mustard on Deep Charcoal")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#111111\"\n\
set statusbar-bg       \"#000000\"\n\
set recolor-darkcolor  \"#ffdb58\"\n\
set recolor-lightcolor \"#111111\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Canary Yellow on Black")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#000000\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#ffee00\"\n\
set recolor-lightcolor \"#000000\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"White on Black")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#000000\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#ffffff\"\n\
set recolor-lightcolor \"#000000\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Black on White")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#ffffff\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#000000\"\n\
set recolor-lightcolor \"#ffffff\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Black on Beige")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#000000\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#000000\"\n\
set recolor-lightcolor \"#ffe1ba\"\n" "$HOME"/.config/zathura/zathurarc
	;;
esac

if [ -z "$chosen" ]
then
  exit 1
fi

if [ "$(xdotool getactivewindow getwindowclassname)" == "Zathura" ]; then
  xdotool type ":"
  xdotool type "s"
  xdotool type "o"
  xdotool type "u"
  xdotool type "r"
  xdotool type "c"
  xdotool type "e"
  xdotool key Return
  xdotool key Escape
fi

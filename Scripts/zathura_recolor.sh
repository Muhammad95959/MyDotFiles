chosen=$(printf "\
Canary Yellow on Black
Yellow on Dark Gray
Amber on Charcoal
Mustard on Deep Charcoal
Black on White
Black on Beige\
" | rofi -dmenu -i -theme ~/.config/rofi/zathura_recolor.rasi -p "choose a theme: ")

case "$chosen" in
"Canary Yellow on Black")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#000000\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#ffee00\"\n\
set recolor-lightcolor \"#000000\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Yellow on Dark Gray")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#333333\"\n\
set statusbar-bg       \"#000000\"\n\
set recolor-darkcolor  \"#ffff00\"\n\
set recolor-lightcolor \"#333333\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Amber on Charcoal")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#222222\"\n\
set statusbar-bg       \"#000000\"\n\
set recolor-darkcolor  \"#ffbf00\"\n\
set recolor-lightcolor \"#222222\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Mustard on Deep Charcoal")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#111111\"\n\
set statusbar-bg       \"#000000\"\n\
set recolor-darkcolor  \"#ffdb58\"\n\
set recolor-lightcolor \"#111111\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Black on Beige")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#000000\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#000000\"\n\
set recolor-lightcolor \"#ffe1ba\"\n" "$HOME"/.config/zathura/zathurarc
	;;
"Black on White")
	sed -i "/-- Recoloring/,+5c\
-- Recoloring\n\
set default-bg         \"#ffffff\"\n\
set statusbar-bg       \"#141414\"\n\
set recolor-darkcolor  \"#000000\"\n\
set recolor-lightcolor \"#ffffff\"\n" "$HOME"/.config/zathura/zathurarc
	;;
esac

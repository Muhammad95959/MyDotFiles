toilet change colors -w 100 --rainbow --filter border

function toi {
    toilet "$1" -f term --rainbow
}

oldHex=$(grep '^ *primary = ' ~/.config/polybar/config.ini | sed 's/^.*#//')
read -p "$(toi "Enter HEX code : ")" newHex

echo $oldHex | xclip -selection clipboard
echo "#$oldHex" >> ~/.config/i3/scripts/change_colors.sh

sed -i "/^\ *active_underline/s/$oldHex/$newHex/" ~/.config/polybar/scripts/polywins.sh
sed -i "s/$oldHex/$newHex/g" ~/.config/polybar/config.ini
sed -i "/^\ *client\.focused/s/$oldHex/$newHex/g" ~/.config/i3/config

i3-msg restart

# old colors:-
#f38ba8
#ff11ff
#f38ba8

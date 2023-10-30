#!/bin/bash

chosen=$(printf "\
Aladdin
DigJim
Hercules
Jack-Jazzrabbit-2
Total-Overdose
Toy-Story-3
Pocket Tanks Deluxe 1.6\
" | rofi -dmenu -i -theme ~/.config/rofi/games.rasi -p "choose a script: ")

case "$chosen" in
    "Aladdin") cd /mnt/Disk_D/Muhammad/Games/Aladdin && prime-run wine Aladdin.exe ;;
    "DigJim") cd /mnt/Disk_D/Muhammad/Games/DigJim && prime-run wine DIGJIM.EXE ;;
    "Hercules") cd /mnt/Disk_D/Muhammad/Games/Hercules && prime-run wine StartGame.bat ;;
    "Jack-Jazzrabbit-2") cd /mnt/Disk_D/Muhammad/Games/Jack-Jazzrabbit-2 && prime-run wine Jazz2.exe ;;
    "Total-Overdose") cd /mnt/Disk_D/Muhammad/Games/Total-Overdose && prime-run wine TotalOverdose.exe ;;
    "Toy-Story-3") cd /mnt/Disk_D/Muhammad/Games/Toy-Story-3 && prime-run wine Game-TS3.exe ;;
    "Pocket Tanks Deluxe 1.6") cd /mnt/Disk_D/Muhammad/Games/Pocket-Tanks-Deluxe-1.6 && prime-run wine pockettanks.exe ;;
esac

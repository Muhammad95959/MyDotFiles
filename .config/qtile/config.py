import os
import subprocess
from libqtile import layout, hook
from libqtile.config import Click, Drag, Group, Key, KeyChord, Match
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()
home = os.path.expanduser('~')

#  ____  _             _
# / ___|| |_ __ _ _ __| |_ _   _ _ __
# \___ \| __/ _` | '__| __| | | | '_ \
#  ___) | || (_| | |  | |_| |_| | |_) |
# |____/ \__\__,_|_|   \__|\__,_| .__/
#                               |_|

@hook.subscribe.startup_once
def autostartonce():
    subprocess.Popen([home + '/.config/qtile/autostartonce.sh'])

@hook.subscribe.startup
def autostart():
    subprocess.Popen([home + '/.config/qtile/autostart.sh'])

#   _  __                 _                   _
#  | |/ /___ _   _    ___| |__   ___  _ __ __| |___
#  | ' // _ \ | | |  / __| '_ \ / _ \| '__/ _` / __|
#  | . \  __/ |_| | | (__| | | | (_) | | | (_| \__ \
#  |_|\_\___|\__, |  \___|_| |_|\___/|_|  \__,_|___/
#            |___/

redshift_mode = [
    Key([], "r", lazy.spawn("redshift -x")),
    Key([], "1", lazy.spawn("redshift -P -O 5000")),
    Key([], "2", lazy.spawn("redshift -P -O 4000")),
    Key([], "3", lazy.spawn("redshift -P -O 3500")),
    Key([], "4", lazy.spawn("redshift -P -O 3000")),
    Key([], "5", lazy.spawn("redshift -P -O 2500")),
    Key([mod], "n", lazy.set_previous_layout())
    ]

applications_mode = [
    Key([], "a", lazy.spawn("android-studio")),
    Key([], "b", lazy.spawn("blueman-manager")),
    Key([], "c", lazy.spawn("gcolor3")),
    Key([], "d", lazy.spawn("gnome-disks")),
    Key([], "g", lazy.spawn("gparted")),
    Key([], "i", lazy.spawn("idea")),
    Key([], "k", lazy.spawn("kcalc")),
    Key([], "l", lazy.spawn("flatpak run net.sapples.LiveCaptions")),
    Key([], "m", lazy.spawn("picard")),
    Key([], "n", lazy.spawn("nitrogen")),
    Key([], "o", lazy.spawn("obs")),
    Key([], "p", lazy.spawn("pamac-manager")),
    Key([], "s", lazy.spawn("kshutdown")),
    Key([], "t", lazy.spawn("timeshift-launcher")),
    Key([], "u", lazy.spawn("uget-gtk")),
    Key([], "v", lazy.spawn("virt-manager")),
    Key([], "z", lazy.spawn("zathura /mnt/Disk_D/مستندات/برمجة/Head-First-Kotlin-Dawn-Griffiths.pdf")),
    Key(["shift"], "b", lazy.spawn("bleachbit")),
    Key(["shift"], "c", lazy.spawn("cheese")),
    Key(["shift"], "g", lazy.spawn("gimp")),
    Key(["shift"], "i", lazy.spawn("inkscape")),
    Key(["shift"], "k", lazy.spawn("kate")),
    Key(["shift"], "m", lazy.spawn("mp3splt-gtk")),
    Key(["shift"], "n", lazy.spawn("kitty -e newsboat")),
    Key(["shift"], "p", lazy.spawn("pdfarranger")),
    Key(["shift"], "s", lazy.spawn("shotcut")),
    Key(["shift"], "u", lazy.spawn("python3 /mnt/Disk_D/برامج/Linux/ultimatevocalremovergui/UVR.py")),
    Key(["shift"], "v", lazy.spawn("ventoygui")),
    # Key(["mod1"], "b", lazy.spawn("notify-send -t 5000 "$(acpi)"")),
    Key(["mod1"], "c", lazy.spawn("gucharmap")),
    Key(["mod1"], "m", lazy.spawn("kitty --class pulsemixer -e pulsemixer")),
    Key(["mod1"], "p", lazy.spawn("pavucontrol")),
    Key([mod], "a", lazy.set_previous_layout())
    ]

scripts_mode = [
    Key([], "b", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/polybar/config.ini'")),
    Key([], "d", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/dunst/dunstrc'")),
    Key([], "f", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/newsboat/urls'")),
    Key([], "i", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/i3/config'")),
    Key([], "k", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/kitty/kitty.conf'")),
    Key([], "n", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/nvim/lua/custom/init.lua'")),
    Key([], "m", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/mpv/mpv.conf'")),
    Key([], "p", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/picom/picom.conf'")),
    Key([], "q", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/qutebrowser/config.py'")),
    Key([], "r", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/ranger/rc.conf'")),
    Key([], "z", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.config/zathura/zathurarc'")),
    Key(["shift"], "h", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.zhistory'")),
    Key(["shift"], "i", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/Disk_D/Muhammad/Linux_stuff/Scripts/myManjaroI3Script.sh'")),
    Key(["shift"], "u", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/Scripts/update_DotFiles_repo.sh'")),
    Key(["shift"], "z", lazy.spawn("/bin/sh -c 'kitty -e nvim ~/.zshrc'")),
    Key([mod], "o", lazy.set_previous_layout())
    ]

executable_scripts_mode = [
    Key([], "b", lazy.spawn("/bin/sh -c 'bash ~/Scripts/i3_border_changer.sh")),
    Key([], "e", lazy.spawn("/bin/sh -c 'kitty -e bash /mnt/Disk_D/Muhammad/English_Learner/english_learner.sh'")),
    Key([], "g", lazy.spawn("/bin/sh -c 'bash ~/Scripts/google_translate.sh'")),
    Key([], "k", lazy.spawn("/bin/sh -c 'bash ~/Scripts/app_kill.sh'")),
    Key([], "m", lazy.spawn("/bin/sh -c 'bash ~/Scripts/url_to_mpv.sh'")),
    Key([], "n", lazy.spawn("/bin/sh -c 'bash ~/Scripts/nvidia_power_mode.sh'")),
    Key([], "o", lazy.spawn("/bin/sh -c 'bash ~/Scripts/open_excecutables.sh'")),
    Key([], "p", lazy.spawn("/bin/sh -c 'bash ~/Scripts/toggle_polybar_location.sh'")),
    Key([], "s", lazy.spawn("/bin/sh -c 'bash ~/Scripts/toggle_i3_smart_gaps.sh'")),
    Key([], "u", lazy.spawn("/bin/sh -c 'bash ~/Scripts/update_DotFiles_repo.sh'")),
    Key([], "v", lazy.spawn("/bin/sh -c 'bash ~/Scripts/toggle_vpn.sh'")),
    Key([], "y", lazy.group["9"].toscreen(), lazy.spawn("/bin/sh -c 'kitty --class yt-dlp -e bash ~/Scripts/yt-dlp_script.sh'")),
    Key([mod, "shift"], "o", lazy.set_previous_layout())
]

mouse_mode = [
    # Move the mouse cursor
    Key([], "h", lazy.spawn("xdotool mousemove_relative -- -30 0")),
    Key([], "j", lazy.spawn("xdotool mousemove_relative -- 0 30")),
    Key([], "k", lazy.spawn("xdotool mousemove_relative -- 0 -30")),
    Key([], "l", lazy.spawn("xdotool mousemove_relative -- 30 0")),
    Key(["mod1"], "h", lazy.spawn("xdotool mousemove_relative -- -5 0")),
    Key(["mod1"], "j", lazy.spawn("xdotool mousemove_relative -- 0 5")),
    Key(["mod1"], "k", lazy.spawn("xdotool mousemove_relative -- 0 -5")),
    Key(["mod1"], "l", lazy.spawn("xdotool mousemove_relative -- 5 0")),

    # Click the mouse buttons
    Key([], "f", lazy.spawn("xdotool click 1")),  # left
    Key([], "d", lazy.spawn("xdotool click 2")),  # middle
    Key([], "s", lazy.spawn("xdotool click 3")),  # right

    # Scroll the mouse wheel
    Key(["mod1"], "k", lazy.spawn("xdotool click --repeat 3 4")),  # up
    Key(["mod1"], "j", lazy.spawn("xdotool click --repeat 3 5")),  # down

    # Move the mouse to specific coordinates
    Key([], "1", lazy.spawn("xdotool mousemove 0 0")),
    Key([], "2", lazy.spawn("xdotool mousemove 1920 0")),
    Key([], "3", lazy.spawn("xdotool mousemove 0 1080")),
    Key([], "4", lazy.spawn("xdotool mousemove 1920 1080")),
    Key([], "5", lazy.spawn("xdotool mousemove 960 540")),
    Key([], "6", lazy.spawn("xdotool mousemove 480 270")),
    Key([], "7", lazy.spawn("xdotool mousemove 1440 270")),
    Key([], "8", lazy.spawn("xdotool mousemove 480 810")),
    Key([], "9", lazy.spawn("xdotool mousemove 1440 810")),

    # Exit mouse mode
    Key([mod], "m", lazy.ungrab_chord()),
]

#   _  __
#  | |/ /___ _   _ ___
#  | ' // _ \ | | / __|
#  | . \  __/ |_| \__ \
#  |_|\_\___|\__, |___/
#            |___/

keys = [

    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html

    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod, "shift"], "Return", lazy.spawn("rofi -show drun"), desc="Launch rofi"),
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "space", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
    Key([mod, "shift"], "space", lazy.window.toggle_floating(), desc='toggle floating'),
    KeyChord([mod], "a", applications_mode, name="applications mode"),
    Key([mod], "b", lazy.spawn("brave"), desc="Launch brave browser"),
    Key([mod, "shift"], "b", lazy.spawn("qutebrowser"), desc="Launch qutebrowser"),
    Key([mod], "c", lazy.spawn("rofi-gpaste"), desc="Launch rofi-gpaste"),
    Key([mod, "shift"], "c", lazy.spawn("dunstctl close-all"), desc="Close dunst notifications"),
    Key([mod], "d", lazy.spawn("dolphin"), desc="Launch dolphin"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen"),
    Key([mod], "i", lazy.spawn("rofi -modi emoji -show emoji -theme ~/.config/rofi/emoji_chooser.rasi"), desc="Launch rofi emoji selector"),
    Key([mod, "shift"], "i", lazy.spawn("xcalib -invert -alter"), desc="Invert screen colors"),
    KeyChord([mod], "m", mouse_mode, mode=True, name="mouse mode"),
    Key([mod, "shift"], "m", lazy.spawn("xdotool type 'ﷺ'"), desc="Type ﷺ"),
    KeyChord([mod], "n", redshift_mode, name="redshift mode"),
    Key([mod, "shift"], "n", lazy.spawn("/bin/sh -c 'bash ~/Scripts/xdotool_close.sh'"), desc="xdotool close script"),
    KeyChord([mod], "o", scripts_mode, name="scripts mode"),
    KeyChord([mod, "shift"], "o", executable_scripts_mode, name="executable_scripts mode"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "shift"], "q", lazy.spawn("/bin/sh -c 'bash ~/.config/rofi/powermenu/type-1/powermenu.sh'"), desc="Launch rofi powermenu"),
    Key([mod], "r", lazy.spawn("kitty --class Ranger -e ranger"), desc="Launch ranger"),
    Key([mod, "shift"], "r", lazy.reload_config(), lazy.spawn("/bin/sh -c 'killall polybar; polybar -r -c ~/.config/qtile/polybar.ini'"), desc="Reload the config"),
    Key([mod, "shift"], "w", lazy.spawn("nitrogen --set-zoom-fill --random --no-recurse /mnt/Disk_D/Backgrounds"), desc="Change the background randomly"),
    Key([], "Print", lazy.spawn("/bin/sh -c 'flameshot gui --path ~/Pictures'"), desc="Launch flameshot"),
    Key(["shift"], "Print", lazy.spawn("/bin/sh -c 'flameshot full --path ~/Pictures'"), desc="Take full screenshot"),
    Key(["control"], "Escape", lazy.spawn("setcapslock toggle"), desc="Toggle capslock"),
    # Windows controls with vim keys --------------------------------------
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    # PulseAudio controls -------------------------------------------------
    Key([], "XF86AudioRaiseVolume", lazy.spawn("/bin/sh -c 'bash ~/Scripts/volume_control/pactl_volume_up_limit.sh'")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("/bin/sh -c 'amixer set Master on && pactl set-sink-volume @DEFAULT_SINK@ -5%'")),
    Key(["shift"], "XF86AudioRaiseVolume", lazy.spawn("/bin/sh -c 'bash ~/Scripts/volume_control/pactl_volume_up_by_1_limit.sh'")),
    Key(["shift"], "XF86AudioLowerVolume", lazy.spawn("/bin/sh -c 'amixer set Master on && pactl set-sink-volume @DEFAULT_SINK@ -1%'")),
    Key([], "XF86AudioMute", lazy.spawn("/bin/sh -c 'bash ~/Scripts/volume_control/volume_toggle_mute.sh'")),
    Key([], "XF86AudioMicMute", lazy.spawn("/bin/sh -c 'bash ~/Scripts/volume_control/mic_toggle_mute.sh'")),
    # screen brightness controls ------------------------------------------
    Key([], "XF86MonBrightnessUp", lazy.spawn("/bin/sh -c '~/Scripts/brightness_control/inc.exp'")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("/bin/sh -c '~/Scripts/brightness_control/dec.exp'")),
    Key(["shift"], "XF86MonBrightnessUp", lazy.spawn("/bin/sh -c '~/Scripts/brightness_control/s_inc.exp'")),
    Key(["shift"], "XF86MonBrightnessDown", lazy.spawn("/bin/sh -c '~/Scripts/brightness_control/s_dec.exp'")),
    # media player controls -----------------------------------------------
    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause")),
    Key([], "XF86AudioPause", lazy.spawn("playerctl play-pause")),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next")),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous")),
    Key(["shift"], "XF86AudioNext", lazy.spawn("playerctl position 5+")),
    Key(["shift"], "XF86AudioPrev", lazy.spawn("playerctl position 5-")),
]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

#    ____
#   / ___|_ __ ___  _   _ _ __  ___
#  | |  _| '__/ _ \| | | | '_ \/ __|
#  | |_| | | | (_) | |_| | |_) \__ \
#   \____|_|  \___/ \__,_| .__/|___/
#                        |_|

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend(
        [
            Key([mod], i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name)),
            Key([mod, "shift"], i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name)),
            Key([mod, "mod1"], i.name,
                lazy.window.togroup(i.name),
                desc="move focused window to group {}".format(i.name)),
        ]
    )

#   _                            _
#  | |    __ _ _   _  ___  _   _| |_ ___
#  | |   / _` | | | |/ _ \| | | | __/ __|
#  | |__| (_| | |_| | (_) | |_| | |_\__ \
#  |_____\__,_|\__, |\___/ \__,_|\__|___/
#              |___/

layouts = [
    layout.Columns(
        border_focus_stack="#f38ba8",
        border_on_single=True,
        insert_position=1,
        border_width=2,
        margin=10,
        border_focus="#7b58dc",
        border_normal="#555555"
        ),
    layout.Max(),
    # layout.Floating(),
    # layout.MonadTall(),
]

#   ____       _   _   _
#  / ___|  ___| |_| |_(_)_ __   __ _ ___
#  \___ \ / _ \ __| __| | '_ \ / _` / __|
#   ___) |  __/ |_| |_| | | | | (_| \__ \
#  |____/ \___|\__|\__|_|_| |_|\__, |___/
#                              |___/

wmname = "LG3D"
cursor_warp = False
auto_minimize = True
auto_fullscreen = True
bring_front_click = False
follow_mouse_focus = False
reconfigure_screens = True
focus_on_window_activation = "smart"
wl_input_rules = None
screens = []
dgroups_app_rules = []
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(title="RangerFileChooser"),
        Match(wm_class="Nitrogen"),
        Match(wm_class="Gcolor3"),
        Match(wm_class="livecaptions"),
        Match(wm_class="Arandr"),
    ]
)

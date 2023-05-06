from libqtile import bar, widget
from libqtile.config import Screen
from qtile_extras.widget.decorations import PowerLineDecoration

#  __        ___     _            _
#  \ \      / (_) __| | __ _  ___| |_ ___
#   \ \ /\ / /| |/ _` |/ _` |/ _ \ __/ __|
#    \ V  V / | | (_| | (_| |  __/ |_\__ \
#     \_/\_/  |_|\__,_|\__, |\___|\__|___/
#                      |___/

# some useful icons   󰆼   󰃶 

powerline = {
    "decorations": [
        PowerLineDecoration()
    ]
}

widgets = [
    widget.GroupBox(
        highlight_method='block', 
        this_current_screen_border='e1acff', 
        block_highlight_text_color='1e1e2e', 
        inactive='777777', 
        active='ffffff'
        ),
    widget.Spacer(length=5),
    widget.Chord(fmt='  {}  ', background='e60053'),
    widget.Spacer(length=5),
    widget.WindowName(),
    widget.Systray(),
    widget.Sep(padding=20),
    widget.TextBox(foreground='e1acff', fmt='↓↑'),
    widget.Net(format='{total}'),
    widget.TextBox(foreground='e1acff', fmt=' '),
    widget.KeyboardLayout(configured_keyboards=['us','ar']),
    widget.TextBox(foreground='e1acff', fmt=' '),
    widget.Battery(format='{percent:2.0%}', update_interval=30),
    widget.TextBox(foreground='e1acff', fmt=' 󱑑'),
    widget.Clock(format="%I:%M %p"),
    widget.Spacer(length=5),
    ]

#   ____
#  / ___|  ___ _ __ ___  ___ _ __  ___
#  \___ \ / __| '__/ _ \/ _ \ '_ \/ __|
#   ___) | (__| | |  __/  __/ | | \__ \
#  |____/ \___|_|  \___|\___|_| |_|___/
#

screens = [
    Screen(
        top=bar.Bar(
            widgets,
            22,
            background='#1e1e2e',
            # margin=[8,8,0,8],
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    )
]

### Prompt and cursor setup -----------------------------------------------

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable colors and change prompt
# autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$fg[cyan]%}$%b "

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

### Plugins ---------------------------------------------------------------

source ~/.config/zsh/powerlevel10k/powerlevel9k.zsh-theme
source ~/.config/zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.config/zsh/fzf-tab-completion/zsh/fzf-zsh-completion.sh

### VI mode ---------------------------------------------------------------

bindkey -v
export KEYTIMEOUT=1

### Bindings --------------------------------------------------------------

# Fix backspace bug
bindkey '^?' backward-delete-char

# Edit line in vim with ctrl-e:
export VISUAL=nvim
autoload edit-command-line; zle -N edit-command-line
bindkey -M vicmd '^e' edit-command-line

# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

### History setup ---------------------------------------------------------

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=100000

# completion setup --------------------------------------------------------

autoload -U compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.cache/zsh/cache
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

# load kitty completions if in kitty
if test "$TERM" = "xterm-kitty"; then
  if (( $+commands[kitty] )); then
    eval "$(kitty + complete setup zsh)"
  fi
fi

### Environment variables -------------------------------------------------

export MANPAGER='nvim +Man!'
export TERMCMD=kitty
export EDITOR=nvim
export BAT_THEME="Catppuccin Mocha"
export PNPM_HOME=~/.pnpm-global
export PATH=$PNPM_HOME/bin:$PATH
export FZF_DEFAULT_OPTS=" \
--border=rounded --height=~99% --reverse \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

### Aliases ---------------------------------------------------------------

alias logout="pkill -KILL -u $USER"
alias cd="z"
alias ff="fzf-nvim"
alias ls="exa --icons -a --group-directories-first"
alias ll="exa --icons -a --group-directories-first -l"
alias bl="~/Scripts/bilal.sh -a | sed 's/:/:+/1' | column -ts + | rg '\d'"
alias nvim-custom="NVIM_APPNAME=nvim-custom nvim"
alias zrefresh="source $HOME/.zshrc"
alias cppath="pwd | sed 's/\(^.*$\)/\"\1\"/' | xclip -selection clipboard"
alias copycmd="tail -n 2 ~/.zhistory | head -n 1 | xclip -selection clipboard"
alias zshrc="nvim $HOME/.zshrc"
alias i3config="nvim $HOME/.config/i3/config"
alias dwmconfig="nvim $HOME/.config/dwm/config.h"
alias barconfig="nvim $HOME/.config/polybar/config.ini"
alias uvrautoplay="bash ~/Scripts/UVR_autoplay.sh"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias replaceunderscore="find . -depth -name '*_*' | while read -r file; do mv "$file" "$(dirname "$file")/$(basename "$file" | tr '_' ' ')"; done"
alias replacespace="find . -depth -name '* *' | while read -r file; do mv "$file" "$(dirname "$file")/$(basename "$file" | tr ' ' '_')"; done"
alias cptemplate="cp $HOME/Projects/Elzero/4-javascript-course/Elzero_Assignments/00-template/* ."

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  alias rofi-systemd="XDG_CONFIG_HOME=$HOME/.config/rofi/wayland bash ~/.config/rofi/scripts/rofi-systemd"
else
  alias rofi-systemd="bash ~/.config/rofi/scripts/rofi-systemd"
fi

if command -v pacman &> /dev/null; then
  alias pkgsbackup="pacman -Qne | awk '{print \$1}' \
    > /mnt/Disk_D/Muhammad/Repositories/Arch-Backup/ArchNativePackages.txt \
    && pacman -Qm | awk '{print \$1}' \
    > /mnt/Disk_D/Muhammad/Repositories/Arch-Backup/ArchAurPackages.txt"
fi

### autojump setup ----------------------------------------------------------

[ -s /etc/profile.d/autojump.sh ] && source /etc/profile.d/autojump.sh

# Add a `r` function to zsh that opens ranger either at the given directory or
# at the one autojump suggests
rj() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      ranger "$1"
    elif [ -f "$1" ]; then
      ranger --selectfile="$1"
    else
      out="$(autojump $1)"
      if [ -d "$out" ]; then
        ranger "$out"
      else
        ranger --selectfile="$out"
      fi
    fi
  else
    ranger
  fi
	return $?
}

# Add a `y` function to zsh that opens ranger either at the given directory or
# at the one autojump suggests
yj() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      yazi "$1"
    else
      yazi "$(autojump $1)"
    fi
  else
    yazi
  fi
    return $?
}

### zoxide setup ----------------------------------------------------------

if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# Add a `r` function to zsh that opens ranger either at the given directory or
# at the one zoxide suggests
rz() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      ranger "$1"
    else
      ranger "$(zoxide query $1)"
    fi
  else
    ranger
  fi
    return $?
}

# Add a `y` function to zsh that opens ranger either at the given directory or
# at the one zoxide suggests
yz() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      yazi "$1"
    else
      yazi "$(zoxide query $1)"
    fi
  else
    yazi
  fi
    return $?
}

### fzf setup -------------------------------------------------------------

# fzf function for searching and opening files using nvim
fzf-nvim() {
  local selected_file
  selected_file=$(find ~ /mnt/Disk_D/Muhammad /mnt/Disk_D/Engineering \( \
    -path '*/.git/*' \
    -o -path ~/.android \
    -o -path ~/.arduino15 \
    -o -path ~/.cache \
    -o -path ~/.gradle \
    -o -path ~/.npm \
    -o -path ~/.pyenv \
    -o -path ~/.config/BraveSoftware \
    -o -path ~/.config/Microsoft \
    -o -path ~/.config/chromium \
    -o -path ~/.config/content_shell \
    -o -path ~/.config/thorium \
    -o -path ~/.local/share/Android \
    -o -path ~/.local/share/JetBrains \
    -o -path ~/.local/share/nvim \
    -o -path ~/.local/share/nvim-custom \
    -o -path ~/.local/share/waydroid \
    -o -path /mnt/Disk_D/Muhammad/Android_Studio/ASProjects \) \
    -prune -o -type f -print \
    | fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')
  if [ -n "$selected_file" ]; then
    cd $(dirname "$selected_file") 
    nvim "$selected_file"
  fi
}

# fzf integration with zsh
[ -x "$(command -v fzf)" ] && eval "$(fzf --zsh)"

### yazi wrapper ----------------------------------------------------------

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

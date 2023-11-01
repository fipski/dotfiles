# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# export DEFAULT_USER="fernando"
# export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh
export ZSH_POWER_LEVEL_THEME=/usr/share/zsh-theme-powerlevel10k
export EDITOR="/usr/bin/vim"

# fix pycharm in sway
# export _JAVA_AWT_WM_NONREPARENTING=1
# export MOZ_ENABLE_WAYLAND=1
# export XDG_CURRENT_DESKTOP=sway

source $ZSH_POWER_LEVEL_THEME/powerlevel10k.zsh-theme

setfont /usr/share/kbd/consolefonts/ter-powerline-v32b.psf.gz 2>/dev/null

plugins=(archlinux 
  docker 
  jsontools 
  vscode
  # tig 
  gitfast 
  vi-mode
  colored-man-pages
  colorize 
  command-not-found 
  cp 
  dirhistory 
  # sudo
  ) 
# /!\ zsh-syntax-highlighting and then zsh-autosuggestions must be at the end

source $ZSH/oh-my-zsh.sh

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# source $ZSH/oh-my-zsh.sh
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

COMPLETION_WAITING_DOTS="true"

bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line

# alias sway="WLR_NO_HARDWARE_CURSORS=1 sway > /var/log/sway.log 2>&1"

alias sway="LIBVA_DRIVER_NAME=radeonsi sway > /var/log/sway.log 2>&1"
alias sc="systemctl"                                                           
alias iftop='export NCURSES_NO_UTF8_ACS=1 && iftop $@'                         
# alias tmux='TERM=screen-256color tmux'
alias google-chrome="google-chrome-beta"                                                           
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


_decode_base64_url() {                                                         
	local len=$((${#1} % 4))                                                     
	local result="$1"                                                            
	if [ $len -eq 2 ]; then result="$1"'=='                                      
	elif [ $len -eq 3 ]; then result="$1"'='                                     
	fi                                                                           
	echo "$result" | tr '_-' '/+' | base64 -d                                    
}

decode_jwt () {
        _decode_base64_url $(echo -n $1 | cut -d "." -f ${2:-2}) | jq .
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -d /opt/rv32imfc/bin ] && export PATH="${PATH}:/opt/rv32imfc/bin"

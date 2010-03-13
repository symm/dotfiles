HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=20000
PS1='%n@%m:%B%1d%b%# '
RPS1='%~'

setopt appendhistory autocd extendedglob nomatch notify
setopt correct nobeep hist_ignore_space hist_no_store
setopt menucomplete
bindkey -v
zstyle :compinstall filename '/home/gaz/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit
autoload -U colors
compinit

#umask 0077

##################################################
# Exports
##################################################
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM
export EDITOR="vim"
export SVN_EDITOR="vim"
# MAN COLOR
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;37m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[01;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'

##################################################
# Aliases
##################################################

# Global aliases -- These do not have to be

# at the beginning of the command line.
alias -g M='|more'
alias -g H='|head'
alias -g T='|tail'

alias less='less -R'

alias 360burn='sudo growisofs -use-the-force-luke=dao -use-the-force-luke=break:1913760 -dvd-compat -speed=2 -Z'
alias 360check='abgx360 -v -pw --rgn 00FE0000 --splitvid '
alias 360verify='abgx360 -v -pw --rgn 00FE0000 --splitvid -- "/dev/dvd"'
# ArCOSS protected DVD Ripping
alias ArCOSS-rip='ddrescue -n -b 2048 /dev/dvd '
alias burn='cdrecord -v -overburn -eject dev=/dev/dvd driveropts=burnfree'
alias bp="screen /dev/buspirate 115200"
alias dos-convert='"vim +"set ff=unix" +wq '
alias dvbtv="mplayer -cache 8192 -vf pp=lb -autosync 30"
alias grep="grep --color"
# for TF2 screenshots
alias tga2jpg='mogrify -format jpg *.tga *.jpg'

alias search='apt-cache search'
alias show='apt-cache show'
alias sinstall='sudo aptitude install'
alias ssearch='sudo aptitude search'
alias supgrade='sudo aptitude update && sudo aptitude dist-upgrade'
alias supurge='sudo aptitude remove --purge'
alias fsearch='apt-file search'
alias fupdate='sudo apt-file update -v'

# Crypto stuff
alias crypt="sudo cryptsetup -c aes-xts-plain -s 256 -h whirlpool"
alias gpgc="gpg -c --cipher-algo AES"
alias shred="shred -uv -n0 -z"
alias wipe="wipe -F -Q1 -q -R /dev/zero"
alias loop-aes-keygen='loop-aes-keygen -c twofish'
alias keyfile='dd if=/dev/urandom bs=1 count=512'

alias ls="ls -h --color=auto"
alias ll="ls -l"
alias df="df -h"
alias hg='history | grep $1'
alias rm="rm -i"
alias cp="cp -ip"
alias mv="mv -i"
alias ps="ps -fU`whoami`"
alias suids="find / -perm -4000"
alias sgids="find / -perm -2000"
alias fix-files="find . -type f -exec chmod 644 '{}' \; -print"
alias fix-dirs="find . -type d -exec chmod 755 '{}' \; -print"
alias netview="watch netstat -n --inet"
alias diff="colordiff"
alias wget='wget --user-agent "Mozilla/5.0"'

# UTF-8 PuTTY
echo -ne '\e%G\e[?47h\e%G\e[?47l'
export LANG="en_GB.UTF-8"
export LESSCHARSET="utf-8"

# title settings for screen / xterm
function title {
  if [[ $TERM == "screen" ]]; then
    # Use these two for GNU Screen:
    print -nR $'\033k'$1$'\033'\\\

    print -nR $'\033]0;'$2$'\a'
  elif [[ $TERM == "xterm" || $TERM == "rxvt" ]]; then
    # Use this one instead for XTerms:
    print -nR $'\033]0;'$*$'\a'
  fi
}

##################################################
# Functions
##################################################
  
function precmd {
  title zsh "$PWD"
}
  
function preexec {
  emulate -L zsh
  local -a cmd; cmd=(${(z)1})
  title $cmd[1]:t "$cmd[2,-1]"
}

#dvd burning
function burndvdfunc() {
f=${1--}
[ "x$f" = "x-" ] && f=/dev/stdin
growisofs -dvd-compat -Z /dev/dvd=$f
eject
}

alias burndvd='burndvdfunc'
alias mkisofs='mkisofs -rJ -joliet-long'
#     * To burn a data CD: mkisofs -V 'title' dir | burn -
#     * To burn a data DVD: mkisofs -V 'title' dir | burndvd -
#     * To cook and burn a video DVD: mkdvdfs dir | burndvd -

# start X session if we're @ a physical terminal
#if [ -z "$DISPLAY" ] && [ $(tty) = /dev/tty1 ]; then
#	startx
#fi

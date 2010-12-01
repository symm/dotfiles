# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
#export ZSH_THEME="prose"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby cap gem github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# NDS Dev tools
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=$DEVKITPRO/devkitARM

export EDITOR="vim"
export SVN_EDITOR="vim"

alias ls="ls --color=tty -h"
#alias 360burn='sudo growisofs -use-the-force-luke=dao -use-the-force-luke=break:1913760 -dvd-compat -speed=2 -Z'
alias 360burn='sudo growisofs -use-the-force-luke=dao -use-the-force-luke=break:1913760 -dvd-compat -Z'
alias 360check='abgx360 -v -pw --rgn 00FE0000 --splitvid '
alias 360verify='abgx360 -v -pw --rgn 00FE0000 --splitvid -- "/dev/dvd"'
# ArCOSS protected DVD Ripping
alias ArCOSS-rip='ddrescue -n -b 2048 /dev/dvd '
alias burn='cdrecord -v -overburn -eject dev=/dev/dvd driveropts=burnfree'
alias buspirate="screen /dev/buspirate 115200"
alias dos-convert='"vim +"set ff=unix" +wq '
alias dvbtv="mplayer -cache 8192 -vf pp=lb -autosync 30"
alias grep="grep --color"
# convert TF2 screenshots
alias tga2jpg='mogrify -format jpg *.tga *.jpg'

# APT/DPG
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

alias df="df -h --total -T"
#alias hg='history | grep $1'
alias rm="rm -i"
alias cp="cp -ip"
alias mv="mv -i"
alias ps="ps -fU`whoami`"
alias suids="find / -perm -4000"
alias sgids="find / -perm -2000"
alias fix-files="sudo find . -type f -exec chmod 644 '{}' \; -print"
alias fix-dirs="sudo find . -type d -exec chmod 755 '{}' \; -print"
alias netview="watch netstat -n --inet"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

export EDITOR=vim
export SVN_EDITOR="vim"

# temp fix for oh my zsh bug
# https://github.com/robbyrussell/oh-my-zsh/issues/549
export ZSH=$HOME/.oh-my-zsh
#keychain -q ~/.ssh/id_rsa

#
if [[ "$TERM" == "xterm" ]]; then
  export TERM="xterm-256color"
fi

# Node Version Manager
#. ~/.nvm/nvm.sh
#export JRUBY_OPTS="--1.9"

#export PATH="$PATH:/opt/SenchaSDKTools-2.0.0-beta3"
#export PATH="$PATH:/opt/SenchaSDKTools-2.0.0-beta3/command"
#export PATH="$PATH:/opt/SenchaSDKTools-2.0.0-beta3/jsbuilder"
#export PATH="$PATH:/opt/SenchaSDKTools-2.0.0-beta3/bin"
#export SENCHA_SDK_TOOLS_2_0_0_BETA3="/opt/SenchaSDKTools-2.0.0-beta3"
#
unsetopt correct_all
setopt correct

export PYTHONPATH=/usr/local/lib/python2.7/dist-packages
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

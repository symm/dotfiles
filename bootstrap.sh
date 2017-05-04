#!/usr/bin/env bash

set -e
#set -x

cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
                --exclude "*.swp" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		-avh --no-perms . ~;
	#source ~/.zshrc
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

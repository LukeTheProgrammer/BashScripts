#! /bin/bash

if [ ! -d ~/BashScripts ]; then
	echo "You must git clone this repo to your home directory"
	exit 1
else

	if [ -f ~/.bash_aliases  ]; then
		printf "%-100s" "Moving your current .bash_aliases to a backup file..."
		mv ~/.bash_aliases ~/.bash_aliases_BACKUP
		printf "done\n"
	fi

	if [ -f ~/.vimrc  ]; then
		printf "%-100s" "Moving your current .vimrc to a backup file..."
		mv ~/.vimrc ~/.vimrc_BACKUP
		printf "done\n"
	fi

	printf "%-100s" "Setting up new .bash_aliases..."
	ln -s ~/BashScripts/ubuntu/bash_aliases ~/.bash_aliases
	source ~/.bash_aliases
	printf "done\n"

	printf "%-100s" "Setting up new .vimrc..."
	ln -s ~/BashScripts/ubuntu/vimrc ~/.vimrc
	printf "done\n"	

	printf "You are good to go! Happy bashing!\n"

fi

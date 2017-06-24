#! /bin/bash

if [ ! -d ~/BashScripts ]; then
	echo "You must git clone this repo to your home directory"
	exit 1
else

	if [ -f ~/.bash_aliases  ]; then
		printf "Moving your current .bash_aliases to a backup file..."
		sudo mv ~/.bash_aliases ~/.bash_aliases_BACKUP
		printf "done\n"
	fi


fi

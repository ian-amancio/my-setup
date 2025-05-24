#!/usr/bin/env bash

HOME="/home/ian"

echo "RUN [ Create AwesomeWM symlink ] $(date)"

if [ -e "$HOME/.config/awesome" ]; then
	if [ -L "$HOME/.config/awesome" ]; then
		echo "- Ok"
	else
		echo "- Create folder backup and symlink"
		mv "$HOME/.config/awesome" "$HOME/.config/awesome.backup"
		ln -s "$HOME/projects/my-setup/awesome" "$HOME/.config/awesome"
	fi
else
	echo "- Creating symlink"
	ln -s "$HOME/projects/my-setup/awesome" "$HOME/.config/awesome"
fi

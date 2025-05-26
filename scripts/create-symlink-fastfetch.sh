#!/usr/bin/env bash

HOME="/home/ian"

echo "RUN [ Create Fastfetch symlink ] $(date)"

if [ -e "$HOME/.config/fastfetch" ]; then
	if [ -L "$HOME/.config/fastfetch" ]; then
		echo "- Ok"
	else
		echo "- Create folder backup and symlink"
		mv "$HOME/.config/fastfetch" "$HOME/.config/fastfetch.backup"
		ln -s "$HOME/projects/my-setup/fastfetch" "$HOME/.config/fastfetch"
	fi
else
	echo "- Creating symlink"
	ln -s "$HOME/projects/my-setup/fastfetch" "$HOME/.config/fastfetch"
fi

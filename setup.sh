#!/usr/bin/env bash

HOME="/home/ian"
MY_SRC="$HOME/projects/my-setup"

AWESOME_SRC="$MY_SRC/awesome"
AWESOME_DIR="$HOME/.config/awesome"

echo "RUN - $(date)"

echo "[Awesome]"

if [ -e "$AWESOME_DIR" ]; then
	if [ -L "$AWESOME_DIR" ]; then
		echo "- Ok"
	else
		echo "- Create folder backup and symlink"
		mv "$AWESOME_DIR" "$HOME/.config/awesome.backup"
		ln -s "$AWESOME_SRC" "$AWESOME_DIR"
	fi
else
	echo "- Creating symlink"
	ln -s "$AWESOME_SRC" "$AWESOME_DIR"
fi

#!/bin/bash

INSTALL=$(gum choose "install gumshell" "uninstall gumshell")

if [ "$INSTALL" = "install gumshell" ]; then
	gum confirm "Are you sure you want to install gumshell?"
	chmod +x gumshell
	sudo chown root:root gumshell
	sudo cp gumshell /usr/local/bin
	gum style --foreground 212 --border-foreground 213 --align center --width 70 --margin "0 2" --padding "2 4" --border double 'Installation complete'
else
	gum style --foreground 212 --border-foreground 213 --align center --width 70 --margin "0 2" --padding "2 4" --border double 'Installation failed!'
fi

if [ "$INSTALL" = "uninstall gumshell" ]; then
	gum spin --spinner meter --title "Removing gumshell" -- sudo rm -f /usr/loval/bin/gumshell
fi

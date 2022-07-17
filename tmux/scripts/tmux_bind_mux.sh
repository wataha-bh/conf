#!/usr/bin/env bash

# this script binds multiple commands to a single prefix in the tmux.conf
read -p "Util: " cmd

case $cmd in
  "sc")
    tmux neww "$HOME/conf/scripts/search_command.sh"
    ;;
  "man")
    read -p "? " inp
    tmux neww "man $inp"
    ;;
  "i")
    tmux display-message "Installing configuration"
    zsh "$HOME/conf/install" -y
    tmux display-message "Installed"
    sleep 1
    ;;
  *)
    tmux display-message "Command not recognised"
    ;;
esac

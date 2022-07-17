#!/usr/bin/env bash

read -p "Command: " cmd

man tmux | less -p "$cmd \[.*"

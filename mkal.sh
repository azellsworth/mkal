#!/bin/bash

X=$(pwd)   #saves present working directory to X

if [ -n "$ZSH_VERSION" ]; then
   # assume Zsh
   WD=${X// /\\ }  #replaces spaces with '\ '
     sed -i '' -e '$a\' ~/.bash_profile   #creates a new line at the end of bash_profile if necessary
     echo 'alias' "$1"'="cd ' $WD'"' >>~/.zshrc   #creates an alias for pwd at end of zsh profile
     source ~/.zshrc   #reloads .zshrc
fi

if [ -n "$BASH_VERSION" ]; then
   # assume Bash
   WD=${X// /\\ }  #replaces spaces with '\ '
     sed -i '' -e '$a\' ~/.bash_profile   #creates a new line at the end of bash_profile if necessary
     echo 'alias' "$1"'="cd ' $WD'"' >>~/.bash_profile   #creates an alias for pwd at end of bash_profile
     source ~/.bash_profile   #reloads bash_profile 
fi
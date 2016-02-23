#!/bin/bash

# adds mkal alias to both profiles so mkal command will be recognized
# in both bash and zsh

# add mkal alias to bash profile
sed -i '' -e '$a\' ~/.zshrc
echo 'alias mkal="source mkal" # Added by mkal npm module'>> ~/.zshrc

# add mkal alias to zsh profile
sed -i '' -e '$a\' ~/.bash_profile
echo 'alias mkal="source mkal" # Added by mkal npm module'>>  ~/.bash_profile
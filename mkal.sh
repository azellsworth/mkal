  #!/bin/bash

X=$(pwd)   #saves present working directory to X
WD=${X// /\\ }  #replaces spaces with '\ '
  sed -i '' -e '$a\' ~/.bash_profile   #creates a new line at the end of bash_profile if necessary
  echo 'alias' "$1"'="cd ' $WD'"' >>~/.bash_profile   #creates an alias for pwd at end of bash_profile
  . ~/.bash_profile   #reloads bash_profile
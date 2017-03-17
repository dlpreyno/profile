# DLPR amazon bash_profile
export PATH=$PATH:$HOME/bin
export PATH="/apollo/env/SDETools/bin:$PATH" # add SDETools to path
export PATH="~/EnvImprovementNinjas/src/NinjaUtils/bin:$PATH" # add Ninja Utils to path
export PATH="~/.vim/plugin:$PATH"

# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export PS1="\n[\d \t] <$?> \w\n\e[0;36m\u@\H \$ \[$(tput sgr0)\]"
alias ll='ls -l' # list long format
alias la='ls -a' # list all
alias ltr='ls -ltr' # list long format by reverse modification time
alias ..='cd ..' # up folder
alias Cd='cd' # becuase i hold the <shift> key too long some times
alias grep='grep -rn --color --exclude tags --exclude-dir tst' # formatting for grep

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# vim
alias vi='vim' # only use vim

# ssh
alias sshdlpr='ssh dundee.aka.corp.amazon.com' # ssh to remote desktop
alias mountdlpr='sshfs -p 22 dundee@dundee.aka.corp.amazon.com:/home/dundee/. ~/Remote-Desktop/ -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=Home,transform_symlinks,follow_symlinks'
alias umountdlpr='umount -f ~/Remote-Desktop'

# development
alias activate='sudo /apollo/bin/runCommand -a Activate -e'
alias deactivate='sudo /apollo/bin/runCommand -a Deactivate -e'
alias bb='brazil-build'
alias bba='brazil-build apollo-pkg'
alias bbr='brazil-build release'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitMode -p'
alias bwscreate='bws create -n'
alias bbrc='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'


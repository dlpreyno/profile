# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export NEWLINE=$'\n'
export PROMPT_LINE1="%B[%w%t] <%?> %~%b"
export PROMPT_LINE2="%F{#00ffff}%n@%m %#%f "
export PS1="${PROMPT_LINE1}${NEWLINE}${PROMPT_LINE2}"
alias ll='ls -l' # list long format
alias la='ls -a' # list all
alias lla='ls -la' # list all, long format
alias ltr='ls -ltr' # list long format by reverse modification time
alias ..='cd ..' # up folder
alias grep='grep -rn --color --exclude tags --exclude-dir tst' # formatting for grep

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# vim
alias vi='vim' # only use vim

# DLPR bash_profile
export PATH=$PATH:$HOME/bin
export PATH="~/.vim/bundle:$PATH"

# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export LS_COLORS='di=1;34:ln=1;36:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43:*.avi=1;35:*.bmp=1;35:*.gif=1;35:*.jpg=1;35:*.jpeg=1;35:*.mov=1;35:*.mpg=1;35:*.png=1;35:*.tga=1;35:*.tif=1;35:*.wav=1;35:*.wmv=1;35:*.gz=0;31:*.lzh=0;31:*.tgz=0;31:*.zip=0;31'
export PS1="\n\[[\d \t] <$?> \w\]\n\[\e[0;36m\]\u@\H \$ \[$(tput sgr0)\]"
alias ll='ls -l' # list long format
alias la='ls -a' # list all
alias lla='ls -la' # list all, long format
alias ltr='ls -ltr' # list long format by reverse modification time
alias ..='cd ..' # up folder
alias grep='grep -rn --color --exclude tags --exclude-dir={tst,.git} ' # formatting for grep

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# vim
alias vi='vim' # only use vim
export VIMINIT='source ~/Profile/vim/vimrc'

# ruby version manager
export PATH="$PATH:~/.rbenv/shims"
eval "$(rbenv init -)"

# python version manager
export PATH="$PATH:~/.pyenv/shims"
eval "$(pyenv init -)"

# node version manager; NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias jestv='jest --verbose '
alias jests='jest --silent '
alias jestcc='jest --clearCache'
alias npmlint='npm run lint'
alias npmgts='npm run check'

# typescript
alias tscc='tsc --build --clean'

# PostgreSQL
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

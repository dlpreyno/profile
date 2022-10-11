# DLPR bash_profile
if[ -f ~/Profile/sh/.aliases ]; then
  . ~/Profile/sh/.aliases
fi

# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export LS_COLORS='di=1;34:ln=1;36:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43:*.avi=1;35:*.bmp=1;35:*.gif=1;35:*.jpg=1;35:*.jpeg=1;35:*.mov=1;35:*.mpg=1;35:*.png=1;35:*.tga=1;35:*.tif=1;35:*.wav=1;35:*.wmv=1;35:*.gz=0;31:*.lzh=0;31:*.tgz=0;31:*.zip=0;31'
export PS1="\n\[[\d \t] <$?> \w\]\n\[\e[0;36m\]\u@\H ${AWS_VAULT}\$ \[$(tput sgr0)\]"

# ruby version manager
export PATH="$PATH:~/.rbenv/shims"
eval "$(rbenv init -)"

# python version manager
export PATH="$PATH:~/.pyenv/shims"
eval "$(pyenv init -)"

# node version manager; NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
alias jestv='NODE_ENV=unittest jest --verbose '
alias jests='NODE_ENV=unittest jest --silent '
alias jestcc='jest --clearCache'
alias npmlint='npm run lint'
alias npmgts='npm run check'

# typescript
alias tscc='tsc --build --clean'

GPG_TTY=$(tty)
export GPG_TTY

export PATH="/usr/local/opt/yq@3/bin:$PATH"

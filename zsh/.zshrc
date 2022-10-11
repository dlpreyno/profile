export PATH=$HOME/bin:/usr/local/bin:$PATH

# Oh My ZSH
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#export ZSH="/Users/dundeereyno/Profile/zsh/.oh-my-zsh"
ZSH_THEME="clean"
plugins=(brew bundler docker gem git github iterm2 nvm postgres rbenv ruby vi-mode vscode)
#source $ZSH/oh-my-zsh.sh

# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export LS_COLORS='di=1;34:ln=1;36:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43:*.avi=1;35:*.bmp=1;35:*.gif=1;35:*.jpg=1;35:*.jpeg=1;35:*.mov=1;35:*.mpg=1;35:*.png=1;35:*.tga=1;35:*.tif=1;35:*.wav=1;35:*.wmv=1;35:*.gz=0;31:*.lzh=0;31:*.tgz=0;31:*.zip=0;31'
export NEWLINE=$'\n'
export PROMPT_LINE1="%B[%w%t] <%?> %~%b"
export PROMPT_LINE2="%F{#00ffff}%n@%m ${AWS_VAULT}%#%f "
export PS1="${PROMPT_LINE1}${NEWLINE}${PROMPT_LINE2}"

source ~/Profile/sh/.aliases

# ruby
export PATH="~/.rbenv/shims:~/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# node version manager; NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

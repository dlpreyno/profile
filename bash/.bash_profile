# DLPR bash_profile
export PATH=$PATH:$HOME/bin
export PATH="~/.vim/bundle:$PATH"

# terminal
export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagaced
export LS_COLORS='di=1;34:ln=1;36:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43:*.avi=1;35:*.bmp=1;35:*.gif=1;35:*.jpg=1;35:*.jpeg=1;35:*.mov=1;35:*.mpg=1;35:*.png=1;35:*.tga=1;35:*.tif=1;35:*.wav=1;35:*.wmv=1;35:*.gz=0;31:*.lzh=0;31:*.tgz=0;31:*.zip=0;31'
export PS1="\n\[[\d \t] <$?> \w\]\n\[\e[0;36m\]\u@\H ${AWS_VAULT}\$ \[$(tput sgr0)\]"
alias ll='ls -l' # list long format
alias la='ls -a' # list all
alias lla='ls -la' # list all, long format
alias ltr='ls -ltr' # list long format by reverse modification time
alias lls='ls -lS' # list long format by size
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
alias jestv='NODE_ENV=unittest jest --verbose '
alias jests='NODE_ENV=unittest jest --silent '
alias jestcc='jest --clearCache'
alias npmlint='npm run lint'
alias npmgts='npm run check'

# typescript
alias tscc='tsc --build --clean'

# PostgreSQL
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

alias db-import-fresh="bundle exec rake db:drop && aws-vault exec order-pu -- bundle exec rake pg:import_dev_staging && bundle exec rake db:migrate"
alias db-import-test="RAILS_ENV=test bundle exec rake db:drop && RAILS_ENV=test bundle exec rake db:create && RAILS_ENV=test bundle exec rake db:migrate"
alias db-create-my-user="bundle exec rake admin:users:create[dundee.reyno+admin@sweetgreen.com,testtest,admin]"
alias open-tunnel-order-dev="aws-vault exec order-pu -- ~/Projects/gravy/scripts/open-tunnel.sh development database"
alias open-tunnel-order-dev-ext="aws-vault exec order-pu -- ~/Projects/gravy/scripts/open-tunnel.sh development external"
alias open-tunnel-order-staging="aws-vault exec order-pu -- ~/Projects/gravy/scripts/open-tunnel.sh staging database"
alias open-tunnel-order-staging-ext="aws-vault exec order-pu -- ~/Projects/gravy/scripts/open-tunnel.sh staging external"
alias open-tunnel-order-prod="aws-vault exec order-pu -- ~/Projects/gravy/scripts/open-tunnel.sh production database"
alias ssh-tunnel-order-dev="aws-vault exec order-pu -- aws ssm start-session --target i-0bb9f615624022a8c --document-name AWS-StartPortForwardingSession  --parameters '{\"portNumber\":[\"22\"],\"localPortNumber\":[\"2222\"]}'"
alias ssh-tunnel-order-staging="aws-vault exec order-pu -- aws ssm start-session --target i-0f1a3f5836cf61203 --document-name AWS-StartPortForwardingSession  --parameters '{\"portNumber\":[\"22\"],\"localPortNumber\":[\"2222\"]}'"
alias ssh-tunnel-order-prod="aws-vault exec order-pu -- aws ssm start-session --target i-0523cedc6762f487d --document-name AWS-StartPortForwardingSession  --parameters '{\"portNumber\":[\"22\"],\"localPortNumber\":[\"2222\"]}'"
alias aws-vault-profile-test="aws-vault exec order-pu --debug -- aws sts get-caller-identity"

# terraform
alias tf="aws-vault exec order-pu -- terraform"
alias tfi="aws-vault exec order-pu -- terraform init"
alias tfp="aws-vault exec order-pu -- terraform plan"
alias tfw="aws-vault exec order-pu -- terraform workspace"
alias tff="terraform fmt"

# aws-vault
export AWS_PROFILE=order-pu
export AWS_VAULT_PROMPT=osascript
export AWS_VAULT_KEYCHAIN_NAME=login
export AWS_VAULT_BACKEND=keychain

GPG_TTY=$(tty)
export GPG_TTY

export PATH="/usr/local/opt/yq@3/bin:$PATH"

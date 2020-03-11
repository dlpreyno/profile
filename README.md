A place to store my profile and dot files.

# Setup
## git

``git clone https://github.com/dlpreyno/profile.git``

## bash_profile

``source ~/profile/bash/.bash_profile``

## vim

### vim-plug (https://github.com/junegunn/vim-plug)

install vim-plug

``curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
``

reload vim

``:source ~/profile/vim/vimrc``

install plugins

``:PlugInstall``

### YouCompleteMe (https://github.com/ycm-core/YouCompleteMe)

install dependencies

``brew install cmake macvim pythion``
``brew install mono go nodejs``

compile YCM

``cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
``

### Gutentags (https://github.com/ludovicchabant/vim-gutentags)

install dependencies

``brew install ctags``

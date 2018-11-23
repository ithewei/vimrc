#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat <<EOF > ~/.vimrc
set rtp+=~/.vim/scripts
source ~/.vim/scripts/basic.vim
source ~/.vim/scripts/plugin.vim

EOF

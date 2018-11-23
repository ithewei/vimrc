#!/bin/sh

cat <<EOF > ~/.vimrc
set rtp+=~/.vim/scripts
source ~/.vim/scripts/basic.vim
source ~/.vim/scripts/plugin.vim

EOF

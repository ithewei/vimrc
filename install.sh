#!/bin/sh

# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://gitee.com/ithewei/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

if [ -e ~/.tmux.conf ] && [ ! -e ~/.tmux.conf.bak ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi
cp ~/.vim/.tmux.conf ~/.tmux.conf

echo "install succeed."

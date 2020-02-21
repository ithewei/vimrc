#!/bin/sh

#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://gitee.com/ithewei/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

echo "install succeed."

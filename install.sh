#!/bin/bash

# clear old config
rm -rf $HOME/.vim
rm $HOME/.vimrc

# generate config
mkdir -p $HOME/.vim/autoload

DIR=`pwd`

cp "$DIR/vimrc" "$HOME/.vim/vimrc"
cp "$HOME/.vim/vimrc" "$HOME/.vimrc"
cp "$DIR/plugins.vim" "$HOME/.vim/plugins.vim"
cp "$DIR/keybindings.vim" "$HOME/.vim/keybindings.vim"
cp "$DIR/ycm.vim" "$HOME/.vim/ycm.vim"
cp "$DIR/lsp.vim" "$HOME/.vim/lsp.vim"
cp -R "$DIR/datas" "$HOME/.vim/datas"
cp -R "$DIR/ftplugin" "$HOME/.vim/ftplugin"

# init plug manager
wget https://github.com/junegunn/vim-plug/raw/master/plug.vim -O $HOME/.vim/autoload/plug.vim

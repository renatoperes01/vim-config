#!/bin/bash

# SET display texts
blue_text(){
  echo -e "`tput setaf 4`$@`tput sgr0`\n"
}

yellow_text(){
  echo -e "`tput setaf 3`$@`tput sgr0`\n"
}

blue_text 'VIM Config Setup'

yellow_text "Set variables"
BUNDLE_DIR=~/.vim/bundle
COLORS_DIR=~/.vim/colors

yellow_text "Create bundle directory"
mkdir -p $BUNDLE_DIR

yellow_text "Create colors directory"
mkdir -p $COLORS_DIR

yellow_text "Install Dependency Manager (Vundle)"
git clone https://github.com/VundleVim/Vundle.vim.git $BUNDLE_DIR/Vundle.vim

yellow_text "Copy common.vim"
cp common.vim ~/.vim/common.vim

yellow_text "Copy plugins.vim"
cp plugins.vim ~/.vim/plugins.vim

yellow_text "Copy language specific configs"
cp -r ftplugin ~/.vim/ftplugin

yellow_text "Copy .vimrc"
cp vimrc ~/.vimrc

yellow_text "Install Darcula Theme"
wget https://raw.githubusercontent.com/blueshirts/darcula/master/colors/darcula.vim -O $COLORS_DIR/darcula.vim

yellow_text "Install Plugins"
vim -c ':call InstallVundlePlugins()'

blue_text 'Enjoy!'

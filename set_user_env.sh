#!/bin/bash

gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/Water_web_by_Tom_Kijas.jpg

git clone git@github.com:kunishi/dotfiles.git \
  && ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc \
  && ln -s $HOME/dotfiles/vm/.gitconfig $HOME/.gitconfig

mkdir -p $HOME/.vim/bundle \
  && git clone git://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim

gibo -u

gpg --import $HOME/public.key
gpg --import $HOME/private.key

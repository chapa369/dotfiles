#!/bin/sh

SCRIPT_DIR=`dirname $0`
OS=`uname`

case "${OS}" in
    Darwin)
        ;;
    Linux)
        git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
        cd gnome-terminal-colors-solarized
        ./install.sh
        cd $SCRIPT_DIR
        ./install/apt/install.sh
        mv $HOME/.linuxbrew $HOME/dotfiles/.linuxbrew
        ;;
esac

mv $HOME/.enhancd $HOME/dotfiles/.enhancd
mv $HOME/.cache $HOME/dotfiles/.cache
rm -rf $HOME/.config
sh $HOME/.config/nvim/init.sh

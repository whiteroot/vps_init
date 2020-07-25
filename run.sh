#!/bin/bash

cp .bashrc $HOME
cp .vimrc $HOME
mkdir $HOME/tmp
mkdir $HOME/tmp/vim
mkdir $HOME/tmp/vim/backup
mkdir $HOME/tmp/vim/swap

./apt_upgrade.sh
./wp_create_db_user.sh
./wp_install.sh


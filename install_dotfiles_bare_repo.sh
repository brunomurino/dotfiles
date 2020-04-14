#!/bin/bash

####### FIRST SETUP

echo "dotfiles.git" >> .gitignore

git init --bare $HOME/dotfiles.git

echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bash_profile
source ~/.bash_profile

dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin https://github.com/brunomurino/dotfiles.git

####### SETUP IN NEW SYSTEMS

echo "dotfiles.git" >> .gitignore

git clone --bare https://github.com/brunomurino/dotfiles.git $HOME/dotfiles.git

echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME"' >> $HOME/.bash_profile

dotfiles config status.showUntrackedFiles no

dotfiles checkout

if [ $? = 0 ]
then
    echo "Checked out config."
else
    echo "Backing up pre-existing dot files."
    mkdir -p .config-backup
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi

dotfiles checkout

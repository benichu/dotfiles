#!/bin/bash

echo "         __      __  _____ __               "
echo "    ____/ /___  / /_/ __(_) /__  _____      "
echo "   / __  / __ \/ __/ /_/ / / _ \/ ___/      "
echo "  / /_/ / /_/ / /_/ __/ / /  __(__  )       "
echo "  \__,_/\____/\__/_/ /_/_/\___/____/        "
echo "____________________________________________"
echo
echo "Installing dotfiles into your home directory"
echo

########## Variables

dir=~/dotfiles        # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
# TODO: in progress
files="bashrc gitattributes tmux.conf gemrc ackrc inputrc gitignore"        # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

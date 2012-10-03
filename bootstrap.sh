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

########## Functions

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

lnif() {
    if [ ! -e $2 ] ; then
        ln -s $1 $2
    fi
}

########## Variables

endpath="$HOME/dotfiles" # dotfiles directory
today=`date +%F-%T`
backupdir="$HOME/old.dotfiles.$today"

# list of files/folders to symlink in homedir
dotfiles="bashrc gitattributes tmux.conf gemrc ackrc inputrc gitignore"

##########

echo "thanks for installing this dotfile"

# change to the dotfiles directory
echo "changing to the $endpath directory"
cd $endpath
if [ -e $endpath/.git ]; then
  echo "getting the latest version of your dotfiles"
  cd $endpath && git pull
  echo "...update done"
fi

# move any existing dotfiles in homedir to a timestamped backup directory, then create symlinks
for file in $dotfiles; do
    # Backup existing dotfiles stuff
    echo "backing up any existing dotfiles to $backupdir"
    mkdir $backupdir
    mv ~/.$dotfiles $backupdir
    echo "Creating symlink to $file in home directory."
    lnif $endpath/$file ~/.$file
    echo "...symlink done"
done

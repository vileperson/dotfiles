#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/Git/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".bashrc .tmux.conf .vimrc .xinitrc"    # list of files/folders to symlink in homedir

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
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file


cd ~/git/dotfiles/.config
for d in */ ; do
	
done

###########################3



                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
#!/bin/bash

# variables

dir=~/Git/dotfiles
dirbak=~/Git/dotfilesbak
# Functions

fun1 ()
{ 
        if [ -d "$dirbak"/"$d" ]; then
        mkdir -p "$dirbak"/"$d"/
        fi
}

fun2 ()
{ 
        cd "$dir"/"$d"/
                for f in * ; do
                        if [ -f ~/"$subdir"/"$d"/"$f" ]; then
                        mv ~/"$subdir"/"$d"/"$f" "$dirbak"/"$subdir"/"$d"/"$f"
                        fi
                ln -s "$dir"/"$d"/"$f" ~/test/.config/"$d"/
        done
}

fun3 ()
{
	for d in "$subdir"/*/ ; do
        	if [ ! -d ~/"$subdir"/"$d" ]; then
                	mkdir -p ~/"$subdir"/"$d" &&
			ln -s "$dir"/"$subdir"/"$d"/* ~/"$subdir"/"$d"/
        	else
			fun1
			fun2
		fi
	done
{

# Start

# Creates directory for backing up current config files, if it does not already exist.



if [ ! -d "$dirbak" ]; then
mkdir -p "$dirbak"
fi


# Creates appropriate directories for config files that are not directly in the user's /home, if they do not exist already. If they DO exist, run function 1 and function 2.

cd "$dir"

for subdir in */ ; do
	if [ ! -d ~/"$subdir" ] then
		mkdir -p ~/"$subdir" &&
		fun3
	else fun3
	fi
                                                              	

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

# create directories for i3, i3status, pianobar and ranger
cd ~/git/dotfiles/.config
for d in */ ; do
	
done

###########################3



                                                                                                                                                          
                                                                                                                                                          
                                                                                                                                                          
#!/bin/bash

dir=~/Git/dotfiles/.config

fun1 ()
{ 
        if [ -d ~/test_old/.config/"$d" ]; then
        mkdir -p ~/test_old/.config/"$d"/
        fi
}

fun2 ()
{ 
        cd "$dir"/"$d"/
                for f in * ; do
                        if [ -f ~/test/.config/"$d"/"$f" ]; then
                        mv ~/test/.config/"$d"/"$f" ~/test_old/.config/"$d"/"$f"
                        fi
                ln -s "$dir"/"$d"/"$f" ~/test/.config/"$d"/
        done
}

if [ -d ~/test_old/.config ]; then
mkdir -p ~/test_old/.config
fi

cd "$dir"
for d in */ ; do
        if [ ! -d ~/test/.config/"$d" ]; then
                mkdir -p ~/test/.config/"$d" &&
                ln -s "$dir"/"$d"/* ~/test/.config/"$d"/
        else

                fun1
                fun2
        fi
done
                                                              	

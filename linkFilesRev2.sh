#!/bin/bash

# variables

gitdir=~/Git/dotfiles
bakdir=~/Git/dotfilesbak
linkdir=~/testdir
homedir=~/
curdir=~/Git/dotfiles
curbakdir=~/test_old
# functions

fun1 () # handles files in current directory
{
	for f in .[^.]* ; do
		if [ -f "$linkdir"/"$f" ]; then
		mv "$linkdir"/"$f" "$curbakdir"/
		fi
		ln -s "$curdir"/"$f" "$linkdir"
	done
}

fun2 () #handles directories in current directory
{
	for d in  .*/ ; do
		if [ ! -d "$linkdir"/"$d" ]; then
		mkdir -p "$linkdir"/"$d"
		fi
		if [ ! -d "$curbakdir"/"$d" ]; then
		mkdir -p "$curbakdir"/"$d"
		fi
	done
}

fun1
#fun2



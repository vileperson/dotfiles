#!/bin/zsh

# variables

gitdir=~/Git/dotfiles/
bakdir=~/Git/dotfilesbak/
linkdir=~/testdir
homedir=~/
curdir=~/Git/dotfiles
curbakdir=~/test_old/
# functions

fun1 () # Setup directory for backing up files
{
	if [ ! -d "$curbakdir" ]; then
	mkdir "$curbakdir"
	fi
}

fun2 () # handles files in current directory
{
	cd "$curdir"
	for f in .[^.]*(^/) ; do
		if [ -f "$linkdir""$f" ]; then
#		echo "file already there"	
		mv "$linkdir""$f"" ""$curbakdir"
		fi
		ln -s "$curdir$f""$linkdir$f"
	done
}

fun3 () #handles directories in current directory
{
	for d in  .*/ ; do
		if [ ! -d "$linkdir""$d" ]; then
		mkdir -p "$linkdir""$d"
		fi
		if [ ! -d "$curbakdir""$d" ]; then
		mkdir -p "$curbakdir""$d"
		fi
	done
}

fun4 () # script testing function
{
	cd "$curdir"
	for f in .*(^/) ; do
		echo "$f"
		echo "$linkdir/$f"
		echo "$curdir/$f"
		ln -s "$curdir/$f $linkdir/$f"
		done
 
} 

#fun1
#fun2
fun4


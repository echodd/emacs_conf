#!/bin/bash
bin=`pwd`

dateTime=`date '+%F_%T'`

dotEmacs=~/.emacs.d
if [ -d "$dotEmacs" ]; then
    mv "$dotEmacs" "$dotEmacs.$dateTime"
fi
#tar xvf emacs.d.tar.bz2
#
#mkdir ~/.emacs.d
#cp emacs.d/*  ~/.emacs.d/ -r 
#
#use ln file
ln -s $bin/emacs.d $dotEmacs




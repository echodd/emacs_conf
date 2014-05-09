#!/bin/sh
plugins=`pwd`"../plugins/"
for tmp in `ls`
do
	# find the dir 
	if [ -d $tmp ];then
		echo $tmp | perl -lne 'if(/[0-9]/){$old=$_;$_=~s/-[0-9].*$//g;`cp -r  "$old" "../plugins/$_"`}'
#		echo $tmp | perl -lne 'if(/[0-9]/){$old=$_;$_=~s/-[0-9].*$//g;`mv  "$old" "$_"`}'
 	fi
done

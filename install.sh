#!/bin/bash
if [[ ! $UBUNTU ]]; then
	return
fi

if [ ! -z $CORE_SW ];then
	apt-get update
	for core in $CORE_SW
	do
		echo $core
		#apt-get install -y $core
	done
fi

if [ ! -z $PPA_SW ];then
	for ppa in $PPA_SW
	do
		echo $ppa
		#apt-add-repository -y $ppa
	done
	apt-get update
fi

for sw in $SW
do
	echo $sw
	#apt-get install -y $sw
done

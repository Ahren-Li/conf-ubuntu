#!/bin/bash
if [[ ! $UBUNTU ]]; then
	return
fi

if [ ! -z "$CORE_SW_LIST" ];then
	apt-get update
	for core in $CORE_SW_LIST
	do
		INFO_INSTALL "[CORE] $core"
		apt-get install -y $core
	done
fi

if [ ! -z "$PPA_LIST" ];then
	for ppa in $PPA_LIST
	do
		INFO_PPA $ppa
		apt-add-repository -y $ppa
	done
	apt-get update
fi

for sw in $SW_LIST
do
	INFO_INSTALL $sw
	apt-get install -y $sw
done

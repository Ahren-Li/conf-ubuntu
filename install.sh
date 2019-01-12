#!/bin/bash
if [[ ! $UBUNTU ]]; then
	return
fi

if [ ! -z "$CORE_SW_LIST" ];then
	sudo apt-get update
	for core in $CORE_SW_LIST
	do
		INFO_INSTALL "[CORE] $core"
		sudo apt-get install -y $core
	done
fi

for ppa_key in $PPA_KEY_LIST
	do
		INFO_PPA $ppa_key
		wget -qO - $ppa_key | sudo apt-key add -
	done

if [ ! -z "$PPA_LIST" ];then
	for ppa in $PPA_LIST
	do
		INFO_PPA $ppa
		sudo apt-add-repository -y $ppa
	done
	sudo apt-get update
fi

for sw in $SW_LIST
do
	INFO_INSTALL $sw
	sudo apt-get install -y $sw
done

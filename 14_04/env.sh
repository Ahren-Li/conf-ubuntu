#!/bin/bash
if [[ ! $UBUNTU_14 ]]; then
	return
fi

if [ -z $(which apt-add-repository) ];then
	CORE_SW+=" software-properties-common"
fi

. ubuntu/apt/theme-materia.apt
#!/bin/bash
if [[ ! $UBUNTU_12 ]]; then
	return
fi

if [ -z $(which apt-add-repository) ];then
	CORE_SW+=" python-software-properties"
fi

. ubuntu/apt/theme-materia.apt
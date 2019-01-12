#!/bin/bash
if [[ ! $UBUNTU ]]; then
	return
fi

for apt in  ubuntu/apt/*.apt
do
	INFO_INCLUDE "$apt"
	. $apt
done

#!/bin/zsh


if [ $# -ne 0 ];
then
	hosts=$@;
else
	echo "usage ./knfie_prepare.sh any hosts "
	exit
fi
#knife prepare
echo ${hosts} | xargs -n 1 knife solo prepare

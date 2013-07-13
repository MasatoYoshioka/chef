#!/bin/zsh


if [ $# -ne 0 ];
then
	hosts=$@;
else
	echo "usage ./knife_cook.sh any hosts "
	exit
fi
#knife cook
echo ${hosts} | xargs -n 1 knife solo cook

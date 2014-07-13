#!/bin/bash

if [ $# -lt 1 ];then
	echo "tag not found"
	exit 1
fi

destination=/var/www/html/depoyed-app/
tag=$1
cd ${destination}
if [ -e ${tag} ]; then
	rm -rf ${tag}
fi

# git clone
git clone git@github.com:IsseiYuki/test.git -b ${tag} ${tag}
#git submodule init && git submodule update
if [ ! -e ${tag} ]; then
	echo "git clone failed"
	exit 1
fi

# settings
chmod -R 777 ${tag}/tmp

# release
ln -snf ${tag} app
#rm -rf ${tag}

exit 0

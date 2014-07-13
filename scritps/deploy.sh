#!/bin/bash

if [ $# -lt 1 ]; then
	echo "invalid parameters"
	exit 1
fi

#stage=$1
tag=$1

ssh -i ~/.ssh/test-deployment.pem ec2-user@54.92.72.210 "
	./deploy.sh ${tag}
	exit
"

exit 0

#!/bin/bash
set -e

service=$1
param=$2

echo "--------start doris:`date`------"
if [ $service == 'fe' ];then
	echo "start fe"
	/doris/fe/bin/start_fe.sh
elif [ $service == 'fe-follower' ];then
	echo "start follower"
	/doris/fe/bin/start_fe.sh --helper $param
elif [ $service == "be" ];then
	echo "start be"
	/doris/be/bin/start_be.sh
elif [ $service == "broker" ];then
	echo "start broker"
	/doris/broker/bin/start_broker.sh
else
	echo "invalid command"
fi

#!/bin/bash

docker_instances_cleanup(){
	docker ps |awk '{ print $1 }'|awk 'NR != 1'|xargs docker stop
        docker ps -a|awk '{ print $1 }'|awk 'NR != 1'|xargs docker rm
}

echo "Stopping the Running instances and Removing the Stopped Containers"

docker_instances_cleanup

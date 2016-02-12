#!/bin/bash

docker_instances_cleanup(){

	instances_running=( $( docker ps |awk '{ print $1 }'|awk 'NR != 1') )
	instances_stopped=( $( docker ps -a|awk '{ print $1 }'|awk 'NR !=1') )

	(( containers_list=${#instances_running[@]}, max_index= containers_list -1))

	for(( i=0; i<=max_index; i++));do
		echo "Stopping the Container ${instances_running[i]} "
        	docker stop ${instances_running[i]}
		echo "Deleting the Container ${instances_running[i]}"
		docker rm ${instances_running[i]}
	done
	
	echo "Deleting the Old Stopped Instances"

	(( stopped_containers_list=${#instances_stopped[@]}, max_index= stopped_containers_list -1))

	for(( i=0;i<=max_index;i++ ));do
		echo "Deleting the Stopped Containers ${instances_stopped[i]} "
	        docker rm ${instances_stopped[i]}
	done
}

echo "Stopping the Running instances and Removing the Stopped Containers"

docker_instances_cleanup

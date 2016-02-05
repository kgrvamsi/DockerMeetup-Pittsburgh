#!/bin/bash

docker_machine_clean(){
	docker-machine ls |awk '{ print $1 }'|xargs docker-machine rm -f
}

echo "Removing the Previous Machines"

docker_machine_clean

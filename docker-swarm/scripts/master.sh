#!/bin/bash

docker_swarm_token(){
     docker run swarm create
}
docker_swarm_manager_up(){
	docker-machine create -d generic --generic-ssh-user core --generic-ssh-key $1 --generic-ip-address $2  --engine-install-url "https://test.docker.com" --swarm --swarm-master --swarm-discovery token://$token swarm-manager
}

echo "Bringing all the Machines Up"

# $1 = the Key to login inside the machine
# $2 - $4 = the Ip's which the docker service will be made up and running

docker_swarm_token >/home/core/token

token=$( cat /home/core/token )

docker_swarm_manager_up $1 $2

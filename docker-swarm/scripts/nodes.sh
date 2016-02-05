#!/bin/bash

docker_swarm_nodes(){
    docker-machine create -d generic --generic-ssh-user core --generic-ssh-key $1 --generic-ip-address $2  --engine-install-url "https://test.docker.com" --swarm --swarm-discovery token://$token swarm-agent-01
    docker-machine create -d generic --generic-ssh-user core --generic-ssh-key $1 --generic-ip-address $3  --engine-install-url "https://test.docker.com" --swarm --swarm-discovery token://$token swarm-agent-02
}

token=$( cat /home/core/token )

echo "Adding the nodes to the Docker Swarm Cluster"

docker_swarm_nodes $1 $2 $3

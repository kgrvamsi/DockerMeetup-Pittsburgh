#!/bin/bash

docker_swarm_setup(){
    docker-machine create -d generic --generic-ssh-user core --generic-ssh-key $1 --generic-ip-address $2  --engine-install-url "https://test.docker.com" --swarm --swarm-master --swarm-discovery token://$token swarm-master
}

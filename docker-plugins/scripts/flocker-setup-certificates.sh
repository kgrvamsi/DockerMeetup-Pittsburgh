#!/bin/bash

flocker-create-directories(){
	sudo mkdir /etc/flocker
}

flocker-initialize-certs(){
       sudo flocker-ca initialize cluster-main
}

flocker-control-cert(){
       sudo flocker-ca create-control-certificate $1
}

echo "Creating the Flocker Directory"
sleep 2
flocker-create-directories

echo "Initializing the Certificate"
sleep 2
flocker-initialize-certs

echo "Creating the Control Certificates"
sleep 2
flocker-control-cert $1

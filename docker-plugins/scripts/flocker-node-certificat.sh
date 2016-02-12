#!/bin/bash

flocker-node-cert(){
    flocker-ca create-node-certificate
}

echo "Creating the Node Certificate"
sleep 2
flocker-node-cert

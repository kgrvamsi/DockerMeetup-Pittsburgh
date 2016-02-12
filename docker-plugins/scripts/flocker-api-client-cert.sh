#!/bin/bash

flocker_api_cert(){
    flocker-ca create-api-certificate $1
}

echo "Creating the Api Certificate for $1"
sleep 2

flocker_api_cert $1

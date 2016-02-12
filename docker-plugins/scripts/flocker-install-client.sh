#!/bin/bash

flocker_client(){
    sudo apt-get update
    sudo apt-get -y install apt-transport-https software-properties-common
    sudo add-apt-repository -y "deb https://clusterhq-archive.s3.amazonaws.com/ubuntu/$(lsb_release --release --short)/\$(ARCH) /"
    sudo apt-get update
    sudo apt-get -y install --force-yes clusterhq-flocker-cli
}

echo "Installing the Flocker Cli"
sleep 5

flocker_client

#!/bin/bash

flocker_install(){
	apt-get update
	apt-get -y install apt-transport-https software-properties-common
	add-apt-repository -y "deb https://clusterhq-archive.s3.amazonaws.com/ubuntu/$(lsb_release --release --short)/\$(ARCH) /"
	apt-get update
	apt-get -y install --force-yes clusterhq-flocker-node
}

flocker_docker_plugin(){
	apt-get install -y --force-yes clusterhq-flocker-docker-plugin
}



echo "Installing the Flocker cluster"
flocker_install

if [ $? != 0];
then
    echo "Installation went wrong somewhere!!!"
else
    echo "Installation of Flocker done Successfully"
fi

echo "Installing the Flocker Docker plugin"
flocker_docker_plugin

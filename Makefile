#This is a sample make file
all: status

.PHONY: status

status:
	cd docker-kubernetes && pwd && vagrant status && pwd && cd ../docker-plugins && pwd && vagrant status && cd ../docker-swarm && pwd && vagrant status

kubernetes:
	cd docker-kubernetes && vagrant up && vagrant status

swarm:
	cd docker-swarm && vagrant up && vagrant status

plugins:
	cd docker-plugins && vagrant up && vagrant status

clean:
	cd docker-kubernetes && vagrant halt && cd ../docker-swarm && vagrant halt &&  cd ../docker-plugins && vagrant halt

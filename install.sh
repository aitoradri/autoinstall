#!/bin/bash

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'

apt update

apt install -y docker-engine

curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

usermod -aG docker dr-docker

git clone https://github.com/aitoradri/moodle.git

cd /dr-docker/home/moodle

docker-compose up

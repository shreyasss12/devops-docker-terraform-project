#!/bin/bash

apt-get update -y
apt-get install -y docker.io awscli snapd 

systemctl start docker
systemctl enable docker

if ! snap list amazon-ssm-agent >/dev/null 2>&1; then
    snap install amazon-ssm-agent --classic
fi

snap start amazon-ssm-agent
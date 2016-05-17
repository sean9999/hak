#!/bin/bash

hostname ubuntu-xenial
echo ubuntu-xenial > /etc/hostname

apt-get update
apt-get upgrade -y
apt-get install -y git nodejs docker.io


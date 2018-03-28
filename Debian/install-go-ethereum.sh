#!/bin/sh
sudo -i

curl -O https://dl.google.com/go/go1.10.linux-amd64.tar.gz
apt-get -y install tar
tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz

mkdir -p ~/go; echo "export GOPATH=$HOME/go" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

apt-get --force-yes install software-properties-common
add-apt-repository --force-yes ppa:ethereum/ethereum
apt-get update
apt-get --force-yes install ethereum 

#!/bin/bash
sudo apt-get update && sudo apt-get install -y python-pip python-m2crypto
sudo pip install --upgrade pip
sudo pip install shadowsocks
sudo cp ./shadowsocks.json /etc/shadowsocks.json
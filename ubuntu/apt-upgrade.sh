#! /bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get install -f


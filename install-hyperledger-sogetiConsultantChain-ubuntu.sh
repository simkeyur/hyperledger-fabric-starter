#!/bin/bash
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Usage:
#
# ./hyperledger-prereq-ubuntu.sh
#
# User must then logout and login upon completion of script
#

#Installing Go lang 1.9
sudo curl -O https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
sudo tar -xvf go1.9.1.linux-amd64.tar.gz

echo "Moving go to /usr/local"
sudo mv go /usr/local

echo "Setting Go Paths"
mkdir $HOME/work
export GOPATH=$HOME/work
mkdir -p work/src/github.com/hyperledger && cd ~/work/src/github.com/hyperledger

git clone http://gerrit.hyperledger.org/r/fabric

#Install Hyperledger Fabric
mkdir ~/Projects && cd ~/Projects

git clone https://github.com/CarlosRangel17/fabric-consultantchain.git 

./startApp.sh

echo "Please go to localhost:8000"

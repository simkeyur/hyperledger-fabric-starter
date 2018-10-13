#
## Hyperledger Fabric Guide

Assuming you have Ubuntu 16.04 LTS setup successfully, please proceed to step 1.

1. Install Curl &amp; Git

        sudo apt-get update

        sudo apt-get install curl

        sudo apt-get install git-core

        git --version  
        
        curl -v

2. Clone Main Repo &amp; getting Prereqs

        git clone https://github.com/simkeyur/hyperledger-fabric-starter.git

        cd hyperledger-fabric-starter/

        chmod u+x install-hyperledger-prereq-ubuntu.sh

        ./install-hyperledger-prereq-ubuntu.sh

        NOTE: Log out and log back in **** (Important)**

3. Install &amp; Run Hyperledger

        cd ~/hyperledger-fabric-starter/

        chmod u+x install-hyperledger-composer-ubuntu.sh

        ./install-hyperledger-composer-ubuntu.sh

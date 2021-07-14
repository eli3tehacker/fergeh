#!/bin/bash

GREEN="32"
BOLDGREEN="\e[1;${GREEN}m""


echo -e "${BOLDGREEN}Installing the needed packages.${ENDCOLOR}"


sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs

#Creating a Directory for the tools we need
mkdir /opt/tools 
echo -e "${BOLDGREEN}Directory created.${ENDCOLOR}"


echo -e "${BOLDGREEN}[+] Installing Go.${ENDCOLOR}"

wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
					sudo tar -xvf go1.14.2.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
cd /opt/tools
echo -e "${RED}[+] Installing Fuff${ENDCOLOR}"

go get -u github.com/ffuf/ffuf

echo "[+] Installing Nmap"
sudo apt update
apt install nmap

echo "[+] Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
sudo pip install -r requirements.txt

echo "[+] Installing Amass"
apt-get install amass

echo "[+] Installing Aquatone"
go get github.com/michenriksen/aquatone

echo "[+] Installing httprobe"
go get -u github.com/tomnomnom/httprobe

echo "[+] The tools successfully got installed"

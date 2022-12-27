#!/bin/bash
printf '\e[31m%s\e[0m\n%s\n' "Updating OS"
sudo apt-get update
printf '\e[31m%s\e[0m\n%s\n' "Installing Python2"
sudo apt-get install python2
printf '\e[31m%s\e[0m\n%s\n' "Installing pip2"
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output /tmp/get-pip.py
sudo python2 /tmp/get-pip.py
printf '\e[31m%s\e[0m\n%s\n' "Upgrading setuptools & Downloading python2 dev"
pip install --upgrade setuptools
sudo apt-get install python2-dev
printf '\e[31m%s\e[0m\n%s\n' "Installing pycrypto and distorm3"
pip2 install pycrypto && pip2 install distorm3
printf '\e[31m%s\e[0m\n%s\n' "Cloning Volatility 2"
git clone https://github.com/volatilityfoundation/volatility.git
printf '\e[31m%s\e[0m\n%s\n' "Installing Volatility 2"
cd volatility && sudo python2 setup.py install
printf '\e[31m%s\e[0m\n%s\n' "Volatility 2 Installed"



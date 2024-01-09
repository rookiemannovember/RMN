#!/bin/bash

# staging
echo [*] Staging process...
mkdir ~/.RMN
cd ..
mv RMN/* ~/.RMN
rm -rf RMN
cd ~/.RMN
echo [+] Completed

#  get tools
echo [*] Installing tools...
sudo apt update
sudo apt-get install sshpass
sudo apt-get install python3
echo [+] Completed

# set up alias workflow
echo [*] Setting up alias...
echo "alias rmn=\"python3 $(pwd)/main.py\"" >> ~/.bashrc
echo "alias rmn=\"python3 $(pwd)/main.py\"" >> ~/.zshrc
echo [+] Completed

# clean up
echo [+] Installation Completed
echo "- please restart your terminal"
echo "- type 'rmn' to launch OnlyRat"

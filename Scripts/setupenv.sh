#!/bin/bash
sudo apt-get update
#install gnome desktop
#sudo apt-get install ubuntu-desktop -y
#install xrdp
#sudo apt-get install xorgxrdp-hwe-18.04 -y
#sudo apt-get install xfce4 -y
#sudo apt-get install xrdp -y
#sudo systemctl enable xrdp

#using xfce if you are using Ubuntu version later than Ubuntu 12.04LTS

#sudo apt-get install xubuntu-desktop -y
#sudo echo xfce4-session >/root/.xsession
#sudo sed -i '/\/etc\/X11\/Xsession/i xfce4-session' /etc/xrdp/startwm.sh
#sudo service xrdp restart

#LUBUNTU
#sudo apt install -y lubuntu-desktop
#sudo apt-get install xrdp 
#sudo echo lxsession -s Lubuntu -e LXDE > ~/.xsession
#sudo service xrdp restart

sudo apt update
sudo apt install xubuntu-desktop
sudo apt install xrdp 
sudo adduser xrdp ssl-cert  
sudo systemctl restart xrdp


#Dotnetsdk
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1

#VS Code
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y

sudo apt-get install firefox -y

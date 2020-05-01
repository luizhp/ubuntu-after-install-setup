#!/bin/bash

## Set Owner ##
echo "➤ Set Owner"
sudo chown -R $USER:$(id -gn $USER) /home/$USER/.config
echo && echo

## Set temp folder to RAM ##
echo "➤ Set temp folder to RAM"
echo "tmpfs /tmp tmpfs rw,nosuid,nodev" | sudo tee -a /etc/fstab
echo && echo

## Remove possible locks from apt ##
echo "➤ Remove possible locks from apt"
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;
sudo dpkg --configure -a
echo && echo

## Add Repositories ##
echo "──────────────────"
echo " Add Repositories"
echo "──────────────────"
echo && echo

## Repository update ##
echo "➤ Repository update"
sudo add-apt-repository universe
sudo apt update
echo && echo

## Add Flathub repository ##
echo "➤ Add Flathub repository"
sudo apt install flatpak gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo && echo

## Install tools ##
echo "───────────────"
echo " Install tools"
echo "───────────────"
echo && echo

## Install system tools packages ##
echo "➤ Install system tools packages"
sudo apt install preload dconf-editor net-tools -y
echo && echo

## Install system tools ##
echo "➤ Install system tools"
sudo apt install htop -y
echo && echo

## Install user tools packages ##
echo "➤ Install user tools packages"
sudo apt install arj rar unrar p7zip-full ffmpeg xclip -y
echo && echo

## Install dev stuff ##
echo "───────────────────"
echo " Install dev stuff"
echo "───────────────────"
echo && echo

## Install C++/Python packages ##
echo "➤ Install C++/Python packages"
sudo apt install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libffi-dev -y
sudo apt install python3 python-pip -y
echo && echo

## Install NodeJs/Angular/Typescript packages ##
echo "➤ Install NodeJs/Angular/Typescript packages"
sudo apt install git -y
sudo apt install nodejs npm -y
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm uninstall -g @angular/cli
sudo npm cache clean --force
echo "Y" | sudo npm install -g @angular/cli
sudo npm install -g typescript
sudo npm install -g nodemon
sudo npm install -g eslint
sudo npm install -g standard
sudo npm install -g jest
sudo npm install -g npm-check
echo && echo

## Install Vim and setup ##
echo "➤ Install Vim and setup"
sudo apt install vim -y &&
wget -c https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim -O /home/$USER/.vimrc
echo && echo

## Install Developer tools packages ##
echo "➤ Install Developer tools packages"
sudo snap install postman --classic
sudo snap install code --classic
code --install-extension Shan.code-settings-sync
echo && echo

## Install Android-Studio package ##
echo "➤ Install Android-Studio package"
sudo snap install android-studio --classic
echo && echo

## Install Docker ##
echo "➤ Install Docker"
sudo snap install docker
echo && echo
echo "  → adjusting docker permissions"
sudo groupadd docker
sudo usermod -aG docker $USER
sudo chown root:$USER /var/run/docker.sock
echo && echo

## Install MongoDb Client ##
## latest version: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/ ##
echo "➤ Install MongoDb Client"
sudo apt install mongodb-clients -y
echo && echo

## Install extra softwares ##
echo "────────────────────────────"
echo " Install optional softwares"
echo "────────────────────────────"
echo && echo

echo "➤ Install Virtualbox"
sudo apt install virtualbox -y
echo && echo

echo "➤ Install VLC"
sudo snap install vlc --classic
echo "  ➤ setup VLC"
sudo mkdir ~/snap/vlc/common/.cache/vlc

echo && echo
echo "➤ Install Pinta"
sudo apt install pinta -y
echo && echo
echo "➤ Install Gimp"
sudo apt install gimp -y
echo && echo
echo "➤ Install Telegram Desktop"
sudo snap install telegram-desktop
echo && echo
echo "➤ Install Dosbox-x"
sudo snap install dosbox-x
echo && echo
echo "➤ Install IRC Konversation"
sudo snap install konversation
echo && echo

## echo "➤ Install GnuCash"
## sudo apt install gnucash -y
## echo && echo

echo "➤ Install Signal Desktop"
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
echo && echo

echo "➤ Install Gnome Tweaks"
sudo apt-get update -y
sudo apt install gnome-tweaks -y
echo && echo

echo "➤ Install Gnome Subtitles"
echo "\n" | sudo add-apt-repository ppa:pedrocastro/ppa -y
sudo apt-get update -y
sudo apt-get install gnome-subtitles -y
echo && echo

echo "➤ Install OBS Studio"
echo "\n" | sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update -y
sudo apt-get install obs-studio -y
echo && echo

echo "➤ Install GnuCash"
sudo flatpak install flathub org.gnucash.GnuCash -y
echo && echo

## Restricted formats ##
##  * https://askubuntu.com/questions/56446/how-do-i-install-the-ubuntu-restricted-extras-package ##
##  * https://help.ubuntu.com/community/RestrictedFormats ##
echo "➤ Install restricted formats"
sudo apt install ubuntu-restricted-extras -y
echo && echo

## https://www.videolan.org/developers/libdvdcss.html ##
echo "➤ Enabled DVD"
sudo apt install libdvd-pkg -y
sudo dpkg-reconfigure libdvd-pkg 
echo && echo

## Download & Install Google Chrome ##
echo "➤ Download & Install Google Chrome"
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads/ &&
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
echo && echo

## Download & Install Google Earth Pro ##
echo "➤ Download & Install Google Earth Pro"
wget -c https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb -P ~/Downloads/ &&
sudo dpkg -i ~/Downloads/google-earth-pro-stable_current_amd64.deb
echo && echo

echo "────────────"
echo " Last steps"
echo "────────────"

## Install Gnome Chrome extension ##
echo "➤ Install Gnome Chrome extension"
sudo apt install gnome-shell-extensions chrome-gnome-shell -y
echo && echo

## Remove Amazon stuff from Ubuntu - https://askubuntu.com/a/1125865/939619 ##
echo "➤ Remove Amazon stuff from Ubuntu"
sudo apt remove ubuntu-web-launchers -y
echo && echo

## System update ##
echo "➤ System update"
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt autoclean -y
sudo apt autoremove -y
echo && echo

## Finished ##
echo "──────────"
echo " Finished"
echo "──────────"

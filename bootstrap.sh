#!/usr/bin/env bash

add-apt-repository -y ppa:ubuntu-sdk-team/ppa
apt-add-repository -y "deb http://repository.spotify.com stable non-free" && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
add-apt-repository -y ppa:jerzy-kozera/zeal-ppa 
add-apt-repository -y ppa:chris-lea/node.js
apt-add-repository -y ppa:synapse-core/testing
apt-get update

apt-get -y install dkms build-essential aptitude
apt-get -y install aptitude build-essential compizconfig-settings-manager curl dkms dselect gconf-editor mesa-utils powertop synapse terminator unetbootin vim xclip 

# Developer tools
sudo apt-get -y install apache2 git gitg mongodb nodejs php5 php5-mysql python-dev python-pip python-tk zeal

# AV
sudo apt-get -y install audacity ffmpeg flac lame pavucontrol spotify-client vorbis-tools

# Productivity
sudo apt-get -y install abiword fonts-droid fonts-roboto gnumeric 

# Apps
wget https://dl.google.com/linux/direct/google-chrome-beta_current_i386.deb
dpkg -i google-chrome-beta_current_i386.deb
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_i386.deb
dpkg -i sublime-text_build-3065_i386.deb 

### nvpy
sudo pip install nvpy

### meanio
sudo npm install -g meanio

## Remove
sudo apt-get remove libreoffice* thunderbird* 

# xfconf
# apt-get -y install xbuntu-desktop xfconf
# setxkbmap -option -option altwin:swap_alt_win -option compose:rwin
# xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Primary>Tab" --create --type string --set "cycle_windows_key"
# xfconf-query --channel xfce4-keyboard-shortcuts --property "/xfwm4/custom/<Primary><Shift>Tab" --create --type string --set "cycle_reverse_windows_key"
# xfconf-query --channel xfce4-keyboard-shortcuts --property "/commands/custom/<Primary>Escape" --reset
# xfconf-query --channel xfce4-keyboard-shortcuts --property "/commands/custom/<Primary>Escape" --create --type string --set "xfce4-popup-whiskermenu"
xfconf-query --channel xfce4-keyboard-shortcuts --property "/commands/custom/<Primary>Escape" --reset
xfconf-query -v -c xfce4-keyboard-shortcuts -l
xfconf-query --channel xfce4-keyboard-shortcuts --property "/commands/custom/<Primary>space" --create --type string --set "xfce4-popup-whiskermenu"


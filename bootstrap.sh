#!/usr/bin/env bash

add-apt-repository -y ppa:ubuntu-sdk-team/ppa
apt-add-repository -y "deb http://repository.spotify.com stable non-free" && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
add-apt-repository -y ppa:jerzy-kozera/zeal-ppa 
add-apt-repository -y ppa:chris-lea/node.js
apt-add-repository -y ppa:synapse-core/testing
apt-get update

apt-get -y install dkms build-essential aptitude
apt-get -y install aptitude build-essential compizconfig-settings-manager curl dkms dselect gconf-editor mesa-utils powertop synapse terminator unetbootin vim xclip

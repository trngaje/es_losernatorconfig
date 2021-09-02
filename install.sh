#!/bin/bash

mkdir -p ~/develop
cd ~/develop

git clone https://github.com/losernator/romlistkr.git
cd romlistkr

sed -i "s|/home/pi/RetroPie/roms|/home/odroid/roms|" ~/develop/romlistkr/install.sh
sed -i "s/-v pi/-v odroid/" ~/develop/romlistkr/install.sh
sed -i "/opt/d" ~/develop/romlistkr/install.sh

chmod a+x install.sh
# ./install.sh


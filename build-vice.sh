#!/bin/bash

# build-vice.sh
# This program is part of the commodore-dev project, it builds VICE,
# a Commodore 64 emulator on Ubuntu

# Copyright (C) 2020 Scott C. MacCallum
# scott@scm.guru

# This program is free software: you can redistribute it and/or 
# modify it under the terms of the GNU Affero License as published
# by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see http://www.gnu.org/licenses/.

# Get required packages for building VICE

sudo apt-get -y install flex
sudo apt-get -y install bison
sudo apt-get -y install xa65
sudo apt-get -y install libpng-dev
sudo apt-get -y install libsdl2-dev

# Get VICE

wget http://www.zimmers.net/anonftp/pub/cbm/crossplatform/emulators/VICE/vice-3.3.tar.gz -P /home/$USER/Downloads

# Extract VICE

cd /home/$USER/Downloads

tar -v -z -x -f vice-3.3.tar.gz

# Build VICE

cd /home/$USER/Downloads/vice-3.3

sudo ./configure

sudo make
sudo make install

exit

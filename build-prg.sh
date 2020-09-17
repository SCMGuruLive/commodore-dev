#!/bin/bash

# This program is part of the commodore-dev project, it builds a prg
# file from C source code

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

# Define the prg file path
prg_file=""

# Define the c file path
c_file=""

cl65 -o	$prg_file -t c64 $c_file

c64 $prg_file

exit

#!/bin/bash

# To fix Telegram Bangla broken font in Linux, put "76-bangla.conf" file into "/home/.config/fontconfig/conf.d/"  (create folders if doesnt exist) Or, Put the file into,
# "/etc/fonts/conf.d/"
#
# Licencing:
# Copyright 2021 Ahmad Hasan Mubashshir <ahmubashshir@gmail.com>
#
#  '76-bangla.conf' is free fontconfig file; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  '76-bangla.conf' is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  You should have received a copy of the GNU General Public License
#  along with '76-bangla.conf'; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.

# <?xml version="1.0"?>
# <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
# <fontconfig>
# 	<match>
# 		<test name="family"><string>sans-serif</string></test>
# 		<test compare="contains" name="lang">
# 			<string>bn</string>
# 		</test>
# 		<edit name="family" mode="prepend" binding="strong">
# 		    <string>Noto Sans Bengali UI</string>
# 		</edit>
# 	</match>
# 	<match>
# 		<test name="family"><string>serif</string></test>
# 		<test compare="contains" name="lang">
# 			<string>bn</string>
# 		</test>
# 		<edit name="family" mode="prepend" binding="strong">
#     		<string>Noto Serif Bengali</string>
# 		</edit>
# 	</match>
# </fontconfig>

#color
Green='\033[0;32m'        # Green
NC='\033[0m'              # No Color

noto-fonts()
{
    echo -e "${Green}First we'll make sure that required fonts are installed.${NC}"
    sudo pacman -S --noconfirm --needed noto-fonts
}

create-empty-config-file()
{
    echo -e "${Green}Now let's create that config file.${NC}"
    sudo touch "/etc/fonts/conf.d/76-bangla.conf"
}

write-into-config()
{
echo "<?xml version="1.0"?>" | sudo tee -a 76-bangla.conf
echo "<!DOCTYPE fontconfig SYSTEM "fonts.dtd">" | sudo tee -a 76-bangla.conf
echo "<fontconfig>" | sudo tee -a 76-bangla.conf
echo "	<match>" | sudo tee -a 76-bangla.conf
echo "		<test name="family"><string>sans-serif</string></test>" | sudo tee -a 76-bangla.conf
echo "		<test compare="contains" name="lang">" | sudo tee -a 76-bangla.conf
echo "			<string>bn</string>" | sudo tee -a 76-bangla.conf
echo "		</test>" | sudo tee -a 76-bangla.conf
echo "		<edit name="family" mode="prepend" binding="strong">" | sudo tee -a 76-bangla.conf
echo "		    <string>Noto Sans Bengali UI</string>" | sudo tee -a 76-bangla.conf
echo "		</edit>" | sudo tee -a 76-bangla.conf
echo "	</match>" | sudo tee -a 76-bangla.conf
echo "	<match>" | sudo tee -a 76-bangla.conf
echo "		<test name="family"><string>serif</string></test>" | sudo tee -a 76-bangla.conf
echo "		<test compare="contains" name="lang">" | sudo tee -a 76-bangla.conf
echo "			<string>bn</string>" | sudo tee -a 76-bangla.conf
echo "		</test>" | sudo tee -a 76-bangla.conf
echo "		<edit name="family" mode="prepend" binding="strong">" | sudo tee -a 76-bangla.conf
echo "    		<string>Noto Serif Bengali</string>" | sudo tee -a 76-bangla.conf
echo "		</edit>" | sudo tee -a 76-bangla.conf
echo "	</match>" | sudo tee -a 76-bangla.conf
echo "</fontconfig>" | sudo tee -a 76-bangla.conf
}
noto-fonts
create-empty-config-file
    cd "/etc/fonts/conf.d/"
write-into-config
    cd ~

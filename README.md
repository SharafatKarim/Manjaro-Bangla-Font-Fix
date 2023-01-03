# Manjaro-Bangla-Font-Fix
Simple script to fix Bangla font issue (especially `telegram`) in Manjaro and Arch Linux based operating systems.

Simply run the following one line command to install the script!
```
curl -s https://raw.githubusercontent.com/SharafatKarim/Manjaro-Bangla-Font-Fix/main/main.sh | bash
```
if this script doesn't work, you can always revert back to previous self by,
```
sudo rm -rf "/etc/fonts/conf.d/76-bangla.conf"
```

# Another way
If you're running kde-plasma, you can list all your system fonts that uses a specific language! And you get the idea, just delete those (backup recommended). Hope, it works! 

> If you discover any other solution, please share with us!![image](https://user-images.githubusercontent.com/93897936/210300712-dffb9461-d34a-43e4-83b3-ff6ad044067d.png)

# Acknowledgements
- Mefad 🇧🇩|| 115Mefad 🇧🇩|| 115

# Licencing:
[Copyright 2021 (Ahmad Hasan Mubashshir)](mailto:ahmubashshir@gmail.com)

'76-bangla.conf' is free fontconfig file; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

'76-bangla.conf' is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with '76-bangla.conf'; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
MA 02110-1301, USA.

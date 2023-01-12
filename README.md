# Manjaro-Bangla-Font-Fix

## Whole system
If you're running kde plasma then, go to setting, Appearance, Font Management and search for "Mukti Narrow". You can either disable it or delete it. 

![image](https://user-images.githubusercontent.com/93897936/212074422-8f684659-4578-4e01-80d2-bcf80590ef88.png)

You can also do it manually from `/usr/share/fonts/TTF/`. 
But then you may need to reinstall it from any other source. 
Or, [from here](https://www.wfonts.com/font/mukti-narrow).

## Telegram or discord specific
Simple script to fix Bangla font issue (especially `telegram`) in Manjaro and Arch Linux based operating systems.

Simply run the following one line command to install the script!
```
curl -s https://raw.githubusercontent.com/SharafatKarim/Manjaro-Bangla-Font-Fix/main/main.sh | bash
```
if this script doesn't work, you can always revert back to previous self by,
```
sudo rm -rf "/etc/fonts/conf.d/76-bangla.conf"
```

> If you discover any other solution, please share with us!

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

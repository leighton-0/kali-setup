# Kali Setup Script

Prepares Kali as a standard configuration

## NOTE STILL IN DEVELOPMENT

## NOTE: THIS SCRIPT ASSUMES YOU ARE RUNNING AS ROOT

~~~
Load the complete script:-
curl -k -s https://raw.githubusercontent.com/leighton-0/kali-setup/master/kali-setup-script_1.sh | bash
~~~
Load eithers and profile files into wireshark
wget -P /.config/wireshark/ https://raw.githubusercontent.com/leighton-0/kali-setup/eithers
wget -P /.config/wireshark/profiles https://raw.githubusercontent.com/leighton-0/kali-setup/profiles
~~~


## Full feature list:

1. Enables details logging of terminal sessions
	- Including ALL OUTPUT (saved to ~/Logs)
1. Installs the following:
	1. CrackMapExec (from GitHub)
	1. Impacket (from GitHub)
	1. Bloodhound (from GitHub)
	1. EAPhammer (from GitHub)
	1. patator (network brute-force tool)
	1. PCredz
	1. Gowitness
	1. EavesARP
	1. bettercap
	1. Firefox (official non-ESR version)
	1. Chromium
	1. Sublime Text
	1. zmap
	1. LibreOffice
	1. htop
	1. Remmina
	1. gnome-screenshot
	1. realtek-rtl88xxau-dkms (ALFA wireless drivers)
	1. i3 + XFCE desktop environment (optional)
1. Updates system
1. Removes gnome-software
1. Disables auto-lock
1. Enables tap-to-click
1. Initializes Metasploit database
1. Installs rad BLS wallpaper


Original script by  blacklanternsecurity I have deleted some to the apps and customised it to my needs


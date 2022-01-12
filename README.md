## Kali Setup Script

Prepares Kali as a standard configuration

T**his Script is based on the repository by BlackLantern https://github.com/blacklanternsecurity/kali-setup-script. All credit for the followiinf goes to him**

## NOTE STILL IN DEVELOPMENT

## NEEDS ROOT

~~~
Load the complete script:-
curl -k -s https://raw.githubusercontent.com/leighton-0/kali-setup/master/kali-setup-script_1.sh | bash
~~~
Load ethers files into wireshark:-

rm -r .config/wireshark/ethers && wget -P /.config/wireshark/ethers https://raw.githubusercontent.com/leighton-0/kali-setup/master/ethers

#wget -P /etc/systemd/system https://raw.githubusercontent.com/leighton-0/kali-setup/master/changemac@.service
~~~
Load profile files into wireshark:-
wget -P /.config/wireshark/profiles https://raw.githubusercontent.com/leighton-0/kali-setup/profiles
~~~


## Full feature list:

    Enables details logging of terminal sessions
        Including ALL OUTPUT (saved to ~/Logs)
    Installs the following:
        CrackMapExec (from GitHub)
        Impacket (from GitHub)
        Bloodhound (from GitHub)
        EAPhammer (from GitHub)
        patator (network brute-force tool)
        PCredz
        Gowitness
        EavesARP
        bettercap
        docker
        Firefox (official non-ESR version)
        Chromium
        Sublime Text
        BoostNote
        golang (plus environment)
        zmap
        LibreOffice
        htop
        Remmina
        gnome-screenshot
        realtek-rtl88xxau-dkms (ALFA wireless drivers)
        i3 + XFCE desktop environment (optional)
    Updates system
    Removes gnome-software
    Disables auto-lock
    Enables tap-to-click
    Initializes Metasploit database
    Installs rad BLS wallpaper


Original script by  blacklanternsecurity I have deleted some to the apps and customised it to my needs


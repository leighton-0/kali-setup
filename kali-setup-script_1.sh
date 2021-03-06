#!/bin/bash

<< multi-line comment
# need to add
# 1. mega >> https://forums.kali.org/showthread.php?60269-Mega-Desktop-App-(MEGAsync)&p=109521
# 2. sherlock
#    installation
# clone the repo
$ git clone https://github.com/sherlock-project/sherlock.git
 

# change the working directory to sherlock
$ cd sherlock
# install the requirements
$ python3 -m pip install -r requirements.txt

 3 clipit
  apt install clipit 3 clipit
  apt install clipit
  
  install phoneinfoga
  set up root login

multi-line comment

# sets the variable sleep to slow down script
s=9

# make sure we're root
if [ "$HOME" != "/root" ]
then
    printf "Please run while logged in as root\n"
    exit 1
fi

# fix bashrc
cp /root/.bashrc /root/.bashrc.bak
#cp "/home/$(fgrep 1000:1000 /etc/passwd | cut -d: -f1)/.bashrc" /root/.bashrc  NOT SURE WHAT THIS IS DOING!
. /root/.bashrc
   
# enable command aliasing
shopt -s expand_aliases

# skip prompts in apt-upgrade, etc.
export DEBIAN_FRONTEND=noninteractive
alias apt-get='yes "" | apt-get -o Dpkg::Options::="--force-confdef" -y'
apt-get update

# make sure Downloads folder exists
mkdir -p ~/Downloads 2>/dev/null

    printf '\n============================================================\n'
    printf '[+] copy aliases file from github bash_aliases file\n'
    printf '============================================================\n\n'
rm -r .bash_aliases
wget https://raw.githubusercontent.com/leighton-0/kali-setup/master/.bash_aliases
    source ~/.bashrc
    source ~/.bash_aliases
    sleep $s
    
    printf '\n============================================================\n'
    printf '[+] install gedit\n'
    printf '============================================================\n\n'
apt install -y gedit
sleep $s
    

    
    printf '\n============================================================\n'
    printf '[+] install NordVPN\n'
    printf '============================================================\n\n'
wget https://raw.githubusercontent.com/leighton-0/kali-setup/master/nordvpn-release_1.0.0_all.deb
apt-get install -y ./nordvpn-release_1.0.0_all.deb
apt-get update
apt-get install nordvpn
sleep $s


    printf '\n============================================================\n'
    printf '[+] Auto MAC spoof on start up - assuming wlan0\n'
    printf '============================================================\n\n'
 #touch /etc/systemd/system/changemac@.service
wget -P /etc/systemd/system https://raw.githubusercontent.com/leighton-0/kali-setup/master/changemac@.service
systemctl enable changemac@wlan0.service
sleep $s


 printf '\n============================================================\n'
    printf '[+] Auto Random Host name\n'
    printf '============================================================\n\n'
git clone https://github.com/tasooshi/namechanger.git
cd namechanger
make install
sleep $s


    printf '\n============================================================\n'
    printf '[+] copy sources.list.d non-kali repositories to /etc/apt/\n'
    printf '============================================================\n\n'
rm -r /etc/apt/sources.list.d
wget -P '/etc/apt/' https://raw.githubusercontent.com/leighton-0/kali-setup/master/sources.list.d 
sleep $s




# if we're not on a headless system
##if [ -n "$DISPLAY" ]
##then


    printf '\n============================================================\n'
    printf '[+] Disabling Auto-lock, Sleep on AC\n'
    printf '============================================================\n\n'
    sleep $s
    # disable session idle
    gsettings set org.gnome.desktop.session idle-delay 0
    # disable sleep when on AC power
    gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
    # disable screen timeout on AC
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/blank-on-ac -s 0 --create --type int
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-off -s 0 --create --type int
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/dpms-on-ac-sleep -s 0 --create --type int
    # disable sleep when on AC
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/inactivity-on-ac -s 14 --create --type int
    # hibernate when power is critical
    xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/critical-power-action -s 2 --create --type int

sleep $s
   


printf '\n============================================================\n'
printf '[+] Installing:\n'
printf '     - wireless drivers\n'
printf '     - powershell\n'
printf '     - terminator\n'
printf '     - pip & pipenv\n'
printf '     - patator\n'
printf '     - vncsnapshot\n'
printf '     - zmap\n'
printf '     - htop\n'
printf '     - mosh\n'
printf '     - tmux\n'
printf '     - NFS server\n'
printf '     - DNS Server\n'
printf '     - hcxtools (hashcat)\n'
printf '     - fluxion\n'
printf '     - airgeddon\n'
printf '     - tree\n'
printf '============================================================\n\n'

sleep $s

apt-get install \
    realtek-rtl88xxau-dkms \
    powershell \
    terminator \
    python3-dev \
    python3-pip \
    patator \
    net-tools \
    vncsnapshot \
    hcxtools \
    airgeddon \
    tree 

    printf '\n============================================================\n'
    printf '[+] change config file for terminator to 3 pane set up \n'
    printf '============================================================\n\n'
rm -r .config/terminator/config
wget -P '.config/terminator/' https://raw.githubusercontent.com/leighton-0/kali-setup/master/config
curl -k -s https://raw.githubusercontent.com/leighton-0/kali-setup/master/kali-setup-script.sh | bash
sleep $s

<< 'MULTILINE-COMMENT'

Full feature list:

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
        Firefox (official non-ESR version)
        Chromium
        Sublime Text
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

python2 -m pip install pipenv
python3 -m pip install pipenv
apt-get remove mitmproxy
python3 -m pip install mitmproxy

# default tmux config
cat <<EOF > "$HOME/.tmux.conf"
set -g mouse on
set -g history-limit 50000

# List of plugins
set -g @plugin 'tmux-plugins/tmux-logging'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF

printf '\n============================================================\n'
printf '[+] Updating System\n'
printf '============================================================\n\n'
apt-get update
apt-get upgrade


printf '\n============================================================\n'
printf '[+] Installing Bettercap\n'
printf '============================================================\n\n'
apt-get install libnetfilter-queue-dev libpcap-dev libusb-1.0-0-dev
go get -v github.com/bettercap/bettercap


MULTILINE-COMMENT

printf '\n============================================================\n'
printf '[+] Install Fluxion  --  Fluxion installation \n'
printf '============================================================\n\n'
git clone https://github.com/FluxionNetwork/fluxion


#printf '\n============================================================\n'
#printf '[+] Install Airgeddon  --  Airgeddon installation\n'
#printf '============================================================\n\n'
#git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git




normal_log_script='
export HISTSIZE= 
export HISTFILESIZE=
export PROMPT_COMMAND="history -a"
export HISTTIMEFORMAT="%F %T "
setopt INC_APPEND_HISTORY

logdir="$HOME/Logs"
mkdir -p $logdir 2>/dev/null
if [[ -z "$NORMAL_LOGGING" && ! -z "$PS1" && -z "$TMUX" ]]; then
    logfile="$logdir/$(date -u +%F_%H_%M_%S)_UTC.$$.log"
    export NORMAL_LOGGING="$logfile"
    script -f -q "$logfile"
    exit
fi'



    printf '\n============================================================\n'
    printf '[+] Cleaning Up\n'
    printf '============================================================\n\n'
    updatedb
    rmdir ~/Music ~/Public ~/Videos ~/Templates ~/Desktop &>/dev/null
    gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'org.gnome.Terminal.desktop', 'terminator.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Screenshot.desktop', 'sublime_text.desktop', 'boostnote.desktop']"

fi


printf '\n============================================================\n'
printf "[+] Done. Don't forget to reboot! :)\n'
printf "[+] You may also want to install:\n'
printf '     - BurpSuite Pro\n'
printf '     - Firefox Add-Ons\n'
printf '============================================================\n\n'

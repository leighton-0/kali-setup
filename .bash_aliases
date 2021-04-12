#THIS WORKED!!!!!!
alias sdn='shutdown now'
alias v1='grep VERSION /etc/os-release'
alias v2='uname -a'
#alias upd='apt update && apt -y full-upgrade'
alias ba='gedit .bash_aliases'
alias bc='gedit .bashrc'
#alias ip='wget http://ipinfo.io/ip -qO -'
alias iploc='./iploc.sh'
alias srr='. .bashrc && . .bash_aliases'
alias jor='gedit /root/Documents/journal'
alias snms='service network-manager start'
# systemctl restart NetworkManager
alias lmacc1='/usr/local/bin/./lmacc1.sh'
alias lmacc0='/usr/local/bin/./lmacc0.sh'
#alias tor='sudo -u kali -H torbrowser-launcher'
alias his='history | grep'




#alias clone='echo dd if=/dev/sdb of=/dev/sdd bs=4096 status=progress'

#dmesg
#journalctl -f

#+++++++++++++++++++++++++++++++++++++++++++
airgeddon ()  {
	cd airgeddon
	./airgeddon.sh
}
#+++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++++++++++
fluxion ()  {
	cd fluxion
	./fluxion.sh
}
#+++++++++++++++++++++++++++++++++++++++++++

#USER DEFINED SHELL FUNCTIONS

#---------DISK UTILISATION REPORT
ds () {
	echo "Disk space utilisation for $HOSTNAME"
	df -h
}
#=======================================

# --------KALI UPDATE
upd () {
		
	grep VERSION /etc/os-release > lb4upd.txt && uname -a >> lb4upd.txt
	echo "Update Kali"
	apt update && apt -y full-upgrade
	apt-get clean && apt-get update && apt-get dist-upgrade
	apt-get update --fix-missing
	apt autoremove
	grep VERSION /etc/os-release > laftupd.txt && uname -a >> laftupd.txt
	echo "Before upgrade"
	cat lb4upd.txt
	echo "After upgrade"
	cat laftupd.txt
}
#====================================

# ---------PING TELSTRA
ping1 () {
	echo "ping test to Telstra"
	ping 139.130.4.5 -c6
}
#===================================

#----------PING CLOUDFLARE
ping2 () {
	echo "ping test to cloudflare (uses anycast so should be quick)"
	ping  	1.1.1.1
	PID="$!"
	sleep 5	
	echo "PID=$PID"
	
}
#=================================

#----------IP Address & Location
#iploc () {
	#echo "ping test to cloudflare (uses anycast so should be quick)"
	#wget -O ip_loc1 http://ipinfo.io/ip -qO - | wget -O ip_loc2 ~$ curl http://api.db-ip.com/v2/free/
	#wget -O ip_loc2 ~$ curl http://api.db-ip.com/v2/free/ < ip_loc1
	#wget http://ipinfo.io/ip -qO -
	#sleep 10
	#wget ~$ curl http://api.db-ip.com/v2/free/203.219.72.15
	#./iploc.sh
	
}
#=================================

----------IP Address & Location
kkk () {
	#echo "sets up anon IP & MAC"
	#lmacc0
	#sleep 30
	nordvpn connect Double_VPN
	sleep 30
	#nordvpn set killswitch enable
	#sleep 10
	nordvpn status

}
#=====

#!/bin/bash
# ****************************************
# Program: Autoscript Setup VPS 2020     *
# Developer: DeviVPN                 *
# Nickname: Devi                       *
# Modify : Devi                     *
# Date: 04-01-2015                       *
# Last Updated: 29-12-2020               *
# ****************************************
# START SCRIPT ( DeviVPN )

clear
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
apt-get install update
apt-get install figlet toilet -y
clear
figlet DEVIVPN
  echo -e " "                                                                                                        
echo -e " ${color1}-----=[ Installations Menu ]=-----${color3}"
	echo -e " 1) Install AutoScript VPN Menu 1 "
	echo -e " 2) Install AutoScript VPN Menu 2${color1}(Experimental)${color3} "
	echo -e " 3) Install OCS Reseller Panel "
	echo -e " 4) Cancel Installations "
echo -e ""
read -p "$(echo -e "Select from options (1-4): ")" Accounts
echo -e "\n\n"
case $Accounts in
		1)
		clear
		wget -O /usr/local/bin/menu "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/menu"
		wget -O /usr/local/bin/m "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/menu"
		wget -O /usr/local/bin/autokill "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/autokill"
		wget -O /usr/local/bin/user-generate "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/user-generate"
		wget -O /usr/local/bin/user-lock "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/user-lock"
		wget -O /usr/local/bin/user-unlock "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/user-unlock"
		wget -O /usr/local/bin/auto-reboot "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/auto-reboot"
		wget -O /usr/local/bin/user-password "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/user-password"
		wget -O /usr/local/bin/trial "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/trial"
		wget -O /etc/pam.d/common-password "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/common-password"
		wget -O /usr/local/bin/devivpn.sh "https://raw.githubusercontent.com/Devi/ShadowsocksR/master/kingkongvpn.sh"
		wget -O /usr/local/bin/edit-port "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/edit-port"
		chmod +x /usr/local/bin/edit-port
		chmod +x /usr/local/bin/devivpn.sh 
		chmod +x /etc/pam.d/common-password
		chmod +x /usr/local/bin/menu
		chmod +x /usr/local/bin/m
		chmod +x /usr/local/bin/autokill 
		chmod +x /usr/local/bin/user-generate  
		chmod +x /usr/local/bin/user-unlock
		chmod +x /usr/local/bin/user-lock
		chmod +x /usr/local/bin/auto-reboot
		chmod +x /usr/local/bin/user-password
		chmod +x /usr/local/bin/trial
		;;
		2)
		clear
		wget -O /usr/local/bin/menu "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/menu"
		wget -O /usr/local/bin/renew "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/renew"
		wget -O /usr/local/bin/cek "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/cek"
		wget -O /usr/local/bin/delexp "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/delexp"
		wget -O /usr/local/bin/hapus "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/hapus"
		wget -O /usr/local/bin/member "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/member"
		wget -O /usr/local/bin/restart "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/restart"
		wget -O /usr/local/bin/trial "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/trial"
		wget -O /etc/cron.d/reboot_otomatis "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/reboot_otomatis"
		wget -O /usr/local/bin/usernew "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/usernew"
		wget -O /usr/local/bin/autokill "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu2/autokill"
		wget -O /etc/pam.d/common-password "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Menu/common-password"
		wget -O /usr/local/bin/tambahwg "https://script.vpnstores.net/wgadd.sh"
		wget -O /usr/local/bin/hapuswg "https://script.vpnstores.net/wgdel.sh"
		chmod +x /etc/pam.d/common-password
		chmod +x /usr/local/bin/menu
		chmod +x /usr/local/bin/renew
		chmod +x /etc/pam.d/common-password
		chmod +x /usr/local/bin/cek
		chmod +x /usr/local/bin/delexp
		chmod +x /usr/local/bin/hapus
		chmod +x /usr/local/bin/member
		chmod +x /usr/local/bin/restart
		chmod +x /usr/local/bin/trial
		chmod +x /usr/local/bin/autokill
		chmod +x /usr/local/bin/usernew
		chmod +x /usr/local/bin/hapuswg
		chmod +x /usr/local/bin/tambahwg
		;;
		3)
		clear
        wget -q https://raw.githubusercontent.com/Devi/OCS_PANEL/master/Install && chmod +x Install && bash Install
		rm AutoScript
        exit
        ;;
		4)
		clear
		echo -e "${color1}========================================${color3}"
        echo -e "* ${color2}SCRIPT AUTO INSTALL BY DEVIVPN ${color3}*"
        echo -e "${color1}========================================${color3}"
		rm AutoScript
		exit
		;;
	    *) echo invalid option
		exit
		;;
	esac


myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;
if [ $USER != 'root' ]; then
echo "Sorry, for run the script please using root user"
exit 1
fi
if [[ "$EUID" -ne 0 ]]; then
echo "Sorry, you need to run this as root"
exit 2
fi
if [[ ! -e /dev/net/tun ]]; then
echo "TUN is not available"
exit 3
fi
clear
echo "
AUTOSCRIPT BY DEVIVPN

PLEASE CANCEL ALL PACKAGE POPUP

TAKE NOTE !!!"
sleep 3
clear
echo "START AUTOSCRIPT"
sleep 2
clear
echo "SET TIMEZONE KUALA LUMPUT GMT +8"
ln -fs /usr/share/zoneinfo/Asia/Mataram /etc/localtime;
clear
echo "
ENABLE IPV4 AND IPV6

COMPLETE 1%
"
sleep 1
apt-get install -y gnupg2 gnupg gnupg1
echo ipv4 >> /etc/modules
echo ipv6 >> /etc/modules
sysctl -w net.ipv4.ip_forward=1
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/g' /etc/sysctl.conf
sed -i 's/#net.ipv6.conf.all.forwarding=1/net.ipv6.conf.all.forwarding=1/g' /etc/sysctl.conf
sysctl -p
clear
echo "
REMOVE SPAM PACKAGE

COMPLETE 10%
"
sleep 1
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove sendmail*;
apt-get -y --purge remove postfix*;
apt-get -y --purge remove bind*;
apt-get -y remove unscd*;
clear
echo "
UPDATE AND UPGRADE PROCESS

PLEASE WAIT TAKE TIME 1-5 MINUTE
"
sleep 1

echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list

# Fix Key Problem using cat eof tricks
 cat <<'key' > /root/key
#!/bin/bash
 wget -qO - https://download.webmin.com/jcameron-key.asc | apt-key add -
 wget -qO - http://build.openvpn.net/debian/openvpn/stable/pubkey.gpg|apt-key add -
key
bash key
rm key
apt-get update;
apt-get -y autoremove;
apt-get -y install wget curl;
apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-transport-https apt-show-versions python unzip -y
clear
echo "
INSTALLER PROCESS PLEASE WAIT

TAKE TIME 5-10 MINUTE
"
sleep 1

# fail2ban & exim & protection
apt-get install -y grepcidr
apt-get -y install fail2ban sysv-rc-conf dnsutils lsb-release tcpdump dsniff zip unzip;
wget https://github.com/jgmdev/ddos-deflate/archive/master.zip;unzip master.zip;
cd ddos-deflate-master && ./install.sh
service exim4 stop;sysv-rc-conf exim4 off;

# webmin
apt-get -y install webmin
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
export DEBIAN_FRONTEND=noninteractive

# ssh
sed -i 's/#Banner/Banner/g' /etc/ssh/sshd_config
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
wget -O /etc/issue.net "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/issue.net"

#privoxy
apt-get install privoxy -y
 # Removing Duplicate privoxy config
 rm -rf /etc/privoxy/config*
 
 # Creating Privoxy server config using cat eof tricks
 cat <<'privoxy' > /etc/privoxy/config
# My Privoxy Server Config
user-manual /usr/share/doc/privoxy/user-manual
confdir /etc/privoxy
logdir /var/log/privoxy
filterfile default.filter
logfile logfile
listen-address 0.0.0.0:8086
listen-address 0.0.0.0:8181
toggle 1
enable-remote-toggle 0
enable-remote-http-toggle 0
enable-edit-actions 0
enforce-blocks 0
buffer-limit 4096
enable-proxy-authentication-forwarding 1
forwarded-connect-retries 1
accept-intercepted-requests 1
allow-cgi-request-crunching 1
split-large-forms 0
keep-alive-timeout 5
tolerate-pipelining 1
socket-timeout 300
permit-access 0.0.0.0/0 ipserver
privoxy

 # Setting machine's IP Address inside of our privoxy config(security that only allows this machine to use this proxy server)
 sed -i "s/ipserver/$myip/g" /etc/privoxy/config

# dropbear
apt-get -y install dropbear
wget -O /etc/default/dropbear "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Dropbear/dropbear"
apt-get update && sudo apt-get install -y libz-dev
apt-get update && sudo apt-get install -y make
apt-get install -y build-essential
wget https://matt.ucc.asn.au/dropbear/releases/dropbear-2020.80.tar.bz2
bzip2 -cd dropbear-2020.80.tar.bz2 | tar xvf -
cd dropbear-2020.80
./configure
make && make install
mv /usr/sbin/dropbear /usr/sbin/dropbear.old
ln /usr/local/sbin/dropbear /usr/sbin/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart
rm -f /root/dropbear-2020.80.tar.bz2
rm -rf /root/dropbear-2020.80
rm -rf /root/dropbear-2020.80

# squid3
apt-get -y install squid
wget -O /etc/squid/squid.conf "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Squid/squid.conf"
sed -i "s/ipserver/$myip/g" /etc/squid/squid.conf

# Installing OpenVPN by pulling its repository inside sources.list file 
 rm -rf /etc/apt/sources.list.d/openvpn*
 echo "deb http://build.openvpn.net/debian/openvpn/stable $(lsb_release -sc) main" > /etc/apt/sources.list.d/openvpn.list
 apt-get update
 apt-get install openvpn -y

# Creating server.conf, ca.crt, server.crt and server.key
 cat <<'myOpenVPNconf' > /etc/openvpn/server_tcp.conf
# OpenVPN TCP
port 110
proto tcp
dev tun
ca /etc/openvpn/ca.crt
cert /etc/openvpn/server.crt
key /etc/openvpn/server.key
dh /etc/openvpn/dh2048.pem
verify-client-cert none
management 127.0.0.1 5555
username-as-common-name
key-direction 0
plugin /etc/openvpn/plugins/openvpn-plugin-auth-pam.so login
server 10.200.0.0 255.255.0.0
ifconfig-pool-persist ipp.txt
push "route-method exe"
push "route-delay 2"
keepalive 10 120
comp-lzo
user nobody
group nogroup
persist-key
persist-tun
status /etc/openvpn/tcp_stats.log
log tcp.log
verb 2
ncp-disable
cipher none
auth none
myOpenVPNconf

cat <<'myOpenVPNconf2' > /etc/openvpn/server_udp.conf
# OpenVPN UDP
port 25000
proto udp
dev tun
ca /etc/openvpn/ca.crt
cert /etc/openvpn/server.crt
key /etc/openvpn/server.key
dh /etc/openvpn/dh2048.pem
verify-client-cert none
management 127.0.0.1 6666
username-as-common-name
key-direction 0
plugin /etc/openvpn/plugins/openvpn-plugin-auth-pam.so login
server 10.201.0.0 255.255.0.0
ifconfig-pool-persist ipp.txt
push "route-method exe"
push "route-delay 2"
keepalive 10 120
comp-lzo
user nobody
group nogroup
persist-key
persist-tun
status /etc/openvpn/udp_stats.log
log udp.log
verb 2
ncp-disable
cipher none
auth none
myOpenVPNconf2

 cat <<'EOF7'> /etc/openvpn/ca.crt
-----BEGIN CERTIFICATE-----
MIIE7jCCA9agAwIBAgIJAO67DJGw6k4FMA0GCSqGSIb3DQEBCwUAMIGqMQswCQYD
VQQGEwJNWTEMMAoGA1UECBMDU0JIMQwwCgYDVQQHEwNUV1UxFDASBgNVBAoTC0tp
bmdLb25nVlBOMRQwEgYDVQQLEwtLaW5nS29uZ1ZQTjEXMBUGA1UEAxMOS2luZ0tv
bmdWUE4gQ0ExFDASBgNVBCkTC0tpbmdLb25nVlBOMSQwIgYJKoZIhvcNAQkBFhVh
ZG1pbkBraW5na29uZ3Zwbi54eXowHhcNMjAxMjE4MTk1NzUwWhcNMzAxMjE2MTk1
NzUwWjCBqjELMAkGA1UEBhMCTVkxDDAKBgNVBAgTA1NCSDEMMAoGA1UEBxMDVFdV
MRQwEgYDVQQKEwtLaW5nS29uZ1ZQTjEUMBIGA1UECxMLS2luZ0tvbmdWUE4xFzAV
BgNVBAMTDktpbmdLb25nVlBOIENBMRQwEgYDVQQpEwtLaW5nS29uZ1ZQTjEkMCIG
CSqGSIb3DQEJARYVYWRtaW5Aa2luZ2tvbmd2cG4ueHl6MIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEA2HCkvJuPvswyaA0LFN0+00uOrVdcCG7Ru0VkUt//
c/bfJvJgNo4PIS1gZhDDaZegkphlSHEeBCAlo6OpL/4QEckhDr8d3XMJr7ASkQor
uMDvjrhrbxRWX9WO4udRwZbk/g7mKZfSxG5jC1WVJZMi2TsJdNpbcncj3upxd8n0
UjoAwtwVgKUFHxKdLI4cljgropfcXmxjgvStY/Q2rh9cETjZStzIHkPSWhTinVC0
Iesx0SOhLvwhqLvZ0sxfOJL+UvuUGcMOk6HlyogO264yp7jUST3ZqWYud7f5x6qj
/xZ8JD8kw2OEo5vF1CfcmmPe5icTk0P0hytF1R9sWEA6OQIDAQABo4IBEzCCAQ8w
HQYDVR0OBBYEFLqjugSgwvwE/fv/+66K7RbDb/bcMIHfBgNVHSMEgdcwgdSAFLqj
ugSgwvwE/fv/+66K7RbDb/bcoYGwpIGtMIGqMQswCQYDVQQGEwJNWTEMMAoGA1UE
CBMDU0JIMQwwCgYDVQQHEwNUV1UxFDASBgNVBAoTC0tpbmdLb25nVlBOMRQwEgYD
VQQLEwtLaW5nS29uZ1ZQTjEXMBUGA1UEAxMOS2luZ0tvbmdWUE4gQ0ExFDASBgNV
BCkTC0tpbmdLb25nVlBOMSQwIgYJKoZIhvcNAQkBFhVhZG1pbkBraW5na29uZ3Zw
bi54eXqCCQDuuwyRsOpOBTAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4IB
AQCxjyOrU2fh8o1QpTdgnz4XV2rUF5IgYfYhwbKe3rXvDZxBeTTvqP5L0BweJPjK
EFX3ZmNwQe8MJ3CTUfgFUW3Zoqzp5p8OM9XiYkJXjLelz7MEloetc7CdaJwsl7ak
JWCiNbFNT9eCdcbTFN7zRA8pkV42X/sCBibRtPyQGe/6TzwosPqrYaT7/4dGuTNo
a7251M7bZ5zshSdd8LoaP9B3cxrc//nkiFOO2MIDhIUBaZbj8OL0qb0qTXybFjB1
gdelXB4FrXJUTw6/HemRg2m1CH1S6mRjpOvNGKLy2lDtzgYg20RbmqFs7gaGnixR
AYJ9OhGDjVbmGZ5dKCqa+7iw
-----END CERTIFICATE-----
EOF7
 cat <<'EOF9'> /etc/openvpn/server.crt
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 1 (0x1)
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=MY, ST=SBH, L=TWU, O=DEVIVPN, OU=DEVIVPN, CN=DEVIVPN CA/name=DEVIVPN/emailAddress=admin@Devivpn
        Validity
            Not Before: Dec 18 19:57:50 2020 GMT
            Not After : Dec 16 19:57:50 2030 GMT
        Subject: C=MY, ST=SBH, L=TWU, O=DEVIVPN, OU=DEVIVPN, CN=DEVIVPN/name=DEVIVPN/emailAddress=admin@Devivpn
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:b6:3e:93:0a:01:fa:67:60:8c:dd:1f:9d:ac:0c:
                    4d:e7:55:72:0c:ea:ea:d6:94:3e:19:66:74:18:3e:
                    58:c0:4d:fe:69:f0:8e:f8:40:71:d3:31:ab:67:a6:
                    ee:f9:6c:5b:24:77:5c:b3:0d:1b:e2:6f:f4:f2:25:
                    e5:52:77:75:60:18:bf:73:9b:f7:1c:44:d7:df:92:
                    4b:e8:90:7a:00:89:31:1d:38:f4:db:79:66:d8:c2:
                    41:50:b7:91:2a:a9:26:24:10:88:4a:f1:d5:bb:f5:
                    24:43:ca:77:86:7c:cd:e9:2d:80:23:ad:f9:58:cb:
                    96:2f:2b:78:3e:8d:6f:27:36:13:c1:25:f2:9a:2b:
                    b4:6a:be:62:e7:2d:e4:3c:12:cf:55:5a:b8:a4:51:
                    53:51:87:79:82:bd:29:b4:da:df:cc:21:d8:df:07:
                    bf:cd:31:76:8c:c9:5a:36:c5:5c:cb:47:c7:59:0c:
                    30:dc:7f:c1:87:3b:3e:a9:5c:79:e4:e3:43:c3:c5:
                    9f:23:ab:a2:b8:24:4e:0f:33:83:1a:6a:d1:81:d8:
                    5f:1a:3d:1a:e7:69:8e:17:21:a7:44:77:5e:31:2b:
                    50:68:6f:03:a3:05:32:96:dc:ca:a4:a8:51:71:eb:
                    6d:6a:c1:32:25:31:02:e6:e7:b2:2d:a7:8f:d6:51:
                    77:25
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            Netscape Cert Type: 
                SSL Server
            Netscape Comment: 
                Easy-RSA Generated Server Certificate
            X509v3 Subject Key Identifier: 
                21:4D:AD:6E:CA:7E:C6:82:C5:AD:6E:F9:4F:C5:05:68:9D:14:75:F2
            X509v3 Authority Key Identifier: 
                keyid:BA:A3:BA:04:A0:C2:FC:04:FD:FB:FF:FB:AE:8A:ED:16:C3:6F:F6:DC
                DirName:/C=MY/ST=SBH/L=TWU/O=DEVIVPN/OU=DEVIVPN/CN=DEVIVPN CA/name=DEVIVPN/emailAddress=admin@devivpn
                serial:EE:BB:0C:91:B0:EA:4E:05

            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key Encipherment
            X509v3 Subject Alternative Name: 
                DNS:server
    Signature Algorithm: sha256WithRSAEncryption
         7b:e5:54:d4:b2:4f:0f:11:c3:90:c1:6b:9c:91:d0:0d:58:76:
         14:c0:ee:c7:10:34:ca:5f:d6:63:0f:d3:55:22:84:48:50:3d:
         44:dc:9b:0d:06:87:c2:3e:4e:fd:e1:1b:4e:05:7e:7a:64:f7:
         7b:76:86:7c:6b:bb:2c:6f:dd:6b:da:da:3b:bd:13:c1:ae:65:
         b1:b7:5c:a5:ae:87:9c:b9:93:72:fe:db:57:64:77:a8:96:35:
         35:86:6c:d6:2b:be:68:c2:f2:13:4e:d1:4e:89:a2:f0:69:90:
         16:31:5e:2e:7c:e7:fc:c9:26:8b:9d:33:ff:a5:af:e5:e5:94:
         44:63:2c:d0:af:5c:83:51:21:c2:db:c6:36:1e:34:30:44:13:
         e4:9b:df:6f:44:35:d0:fb:21:69:c7:0a:a3:9e:8a:6d:c2:84:
         8f:25:7a:78:47:82:b6:b5:be:c2:1e:a7:6c:87:0c:a5:f7:1f:
         8e:32:93:83:6b:ba:0e:2a:9e:67:2d:cb:42:cf:fc:13:40:c1:
         75:13:8d:06:0c:aa:ad:e0:39:5b:61:24:3f:a4:bf:db:f8:2a:
         ba:88:9f:de:f9:6b:86:c6:e8:40:10:be:a7:9e:b2:76:38:20:
         7e:f3:97:ab:2b:8e:96:4b:08:c0:af:18:cc:40:c7:a9:e5:bc:
         0b:50:7b:55
-----BEGIN CERTIFICATE-----
MIIFWTCCBEGgAwIBAgIBATANBgkqhkiG9w0BAQsFADCBqjELMAkGA1UEBhMCTVkx
DDAKBgNVBAgTA1NCSDEMMAoGA1UEBxMDVFdVMRQwEgYDVQQKEwtLaW5nS29uZ1ZQ
TjEUMBIGA1UECxMLS2luZ0tvbmdWUE4xFzAVBgNVBAMTDktpbmdLb25nVlBOIENB
MRQwEgYDVQQpEwtLaW5nS29uZ1ZQTjEkMCIGCSqGSIb3DQEJARYVYWRtaW5Aa2lu
Z2tvbmd2cG4ueHl6MB4XDTIwMTIxODE5NTc1MFoXDTMwMTIxNjE5NTc1MFowgaIx
CzAJBgNVBAYTAk1ZMQwwCgYDVQQIEwNTQkgxDDAKBgNVBAcTA1RXVTEUMBIGA1UE
ChMLS2luZ0tvbmdWUE4xFDASBgNVBAsTC0tpbmdLb25nVlBOMQ8wDQYDVQQDEwZz
ZXJ2ZXIxFDASBgNVBCkTC0tpbmdLb25nVlBOMSQwIgYJKoZIhvcNAQkBFhVhZG1p
bkBraW5na29uZ3Zwbi54eXowggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQC2PpMKAfpnYIzdH52sDE3nVXIM6urWlD4ZZnQYPljATf5p8I74QHHTMatnpu75
bFskd1yzDRvib/TyJeVSd3VgGL9zm/ccRNffkkvokHoAiTEdOPTbeWbYwkFQt5Eq
qSYkEIhK8dW79SRDyneGfM3pLYAjrflYy5YvK3g+jW8nNhPBJfKaK7RqvmLnLeQ8
Es9VWrikUVNRh3mCvSm02t/MIdjfB7/NMXaMyVo2xVzLR8dZDDDcf8GHOz6pXHnk
40PDxZ8jq6K4JE4PM4MaatGB2F8aPRrnaY4XIadEd14xK1BobwOjBTKW3MqkqFFx
621qwTIlMQLm57Itp4/WUXclAgMBAAGjggGOMIIBijAJBgNVHRMEAjAAMBEGCWCG
SAGG+EIBAQQEAwIGQDA0BglghkgBhvhCAQ0EJxYlRWFzeS1SU0EgR2VuZXJhdGVk
IFNlcnZlciBDZXJ0aWZpY2F0ZTAdBgNVHQ4EFgQUIU2tbsp+xoLFrW75T8UFaJ0U
dfIwgd8GA1UdIwSB1zCB1IAUuqO6BKDC/AT9+//7rortFsNv9tyhgbCkga0wgaox
CzAJBgNVBAYTAk1ZMQwwCgYDVQQIEwNTQkgxDDAKBgNVBAcTA1RXVTEUMBIGA1UE
ChMLS2luZ0tvbmdWUE4xFDASBgNVBAsTC0tpbmdLb25nVlBOMRcwFQYDVQQDEw5L
aW5nS29uZ1ZQTiBDQTEUMBIGA1UEKRMLS2luZ0tvbmdWUE4xJDAiBgkqhkiG9w0B
CQEWFWFkbWluQGtpbmdrb25ndnBuLnh5eoIJAO67DJGw6k4FMBMGA1UdJQQMMAoG
CCsGAQUFBwMBMAsGA1UdDwQEAwIFoDARBgNVHREECjAIggZzZXJ2ZXIwDQYJKoZI
hvcNAQELBQADggEBAHvlVNSyTw8Rw5DBa5yR0A1YdhTA7scQNMpf1mMP01UihEhQ
PUTcmw0Gh8I+Tv3hG04Ffnpk93t2hnxruyxv3Wva2ju9E8GuZbG3XKWuh5y5k3L+
21dkd6iWNTWGbNYrvmjC8hNO0U6JovBpkBYxXi585/zJJoudM/+lr+XllERjLNCv
XINRIcLbxjYeNDBEE+Sb329ENdD7IWnHCqOeim3ChI8lenhHgra1vsIep2yHDKX3
H44yk4Nrug4qnmcty0LP/BNAwXUTjQYMqq3gOVthJD+kv9v4KrqIn975a4bG6EAQ
vqeesnY4IH7zl6srjpZLCMCvGMxAx6nlvAtQe1U=
-----END CERTIFICATE-----
EOF9
 cat <<'EOF10'> /etc/openvpn/server.key
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC2PpMKAfpnYIzd
H52sDE3nVXIM6urWlD4ZZnQYPljATf5p8I74QHHTMatnpu75bFskd1yzDRvib/Ty
JeVSd3VgGL9zm/ccRNffkkvokHoAiTEdOPTbeWbYwkFQt5EqqSYkEIhK8dW79SRD
yneGfM3pLYAjrflYy5YvK3g+jW8nNhPBJfKaK7RqvmLnLeQ8Es9VWrikUVNRh3mC
vSm02t/MIdjfB7/NMXaMyVo2xVzLR8dZDDDcf8GHOz6pXHnk40PDxZ8jq6K4JE4P
M4MaatGB2F8aPRrnaY4XIadEd14xK1BobwOjBTKW3MqkqFFx621qwTIlMQLm57It
p4/WUXclAgMBAAECggEAOATaC9x5zScXhaz/OXB6zd4s9Z2MXDMrN4GPtBgODear
ioMAX3znwCRnbLAaix7skTQDkaI47Qy+/WP6rrO7p7NTvkS128GpnbaJkM5AQkPp
jfMBCSmzHHPxwc77V2KxL6rJSkg2C9WZtSDaRsO8Q63R0qXanJnP62XwS0IMZb+r
JG7pMZEs6TS4Du8dDXRais20VIck9/ShXB4QNayAcPl1dUN70LGGywujJrKPGvHf
O2uEtqRa1kcaFZGYtK3oPu08keFB5/KFwVSnYyMCiTequng0/eXDiGi9T8zvVOsX
UmyVnM9aiv+693Lw0q4zVEjZ339uTIZWxi7n9n3jgQKBgQDv0hekulEZJhia3yRC
LDauIQiMJ9PzBqoLBccvtjgHeEYMXSWNRUDYVcFPh0OZOx5WUkRfePM81SW2w80+
IigM7PSZpA4i9PfOMMyUsmZH6+QWli/dlsPs6rNnAWcNnNmNPE4F7jPWGoi8+yqO
P/kWvWm/f9RCxiGXhcmCSleE4QKBgQDCihdYH6SKii1R9EzVGixrBbsWlnImFtGS
NpEL50Uff4/taVuvAJjGalcezEF6MbegqiFx3959nz02gctJjtMX30YXvtoOBj2R
5zDTI00dwbEvuJY8t2fqKlSVrWmpf4lhtY2Ny7sEL9lSO0BuTHR3jxT1UQdutZMq
zQD8KEj2xQKBgQC8LE5O+76si/7cbmBF5+lTwimxx4J/+2erVHJRVpoqCk50XxYa
/g7+cHNJEqqQ7hlExDJP81hwEBMSkBpYOXbRhY/7igVpmmtih1nPBxhIMKh8rIWM
SkMbf6EbHrecr8joEDxsXNahlZpbJnzitwGcvSzfjM6hQlOTT++oYuq/IQKBgAHW
YhAQBHLWiUUL5KninGbKYBD/jMZ1Urdp0oblQU7h2o8ofpgxjj/Zg0ckML4huBVJ
ZhV4Qta26VIZeb0RH0dLcZMJ129oea5mG5zy6WiNisnjmW+rX8zjZ3ceczAJp1eH
6nVbZkHM3eWb76jbCgKTFGSYxlQyXNh7pTW8f6vtAoGAeXO1lv15o5/ycweBP9bl
Vr/s0IiwPR2ykU5IV5rVh+nLkeJoY5HA0b477Ecc8dIM4Ljn4mUzPz/b2mIDqpCr
OASewA9sIUjP6X8sWfMXqN/+kD0E11hUbmPPSDjR3AKcvflgUjrhnFyMnnz972mn
MGmmEXi+bY/DV3u2RSoOzLs=
-----END PRIVATE KEY-----
EOF10
 cat <<'EOF13'> /etc/openvpn/dh2048.pem
-----BEGIN DH PARAMETERS-----
MIIBCAKCAQEA72j37f0y52Z8CgY8Ok6Utg90YjGHcy1ol1K7Klq9Lffay1epkaUj
ZC5zA+diDi6v+Dg/SOn+2fL8QwLo9ue6zhLjI0opS8dBc9AO1eTe5T9ID36FL9Ma
2Dmok0Ro2l1ziXBVncgClsEXhwrW0mnyCCfrLKake9pRAxsgvr4p+VvxgC7XjUUb
VBIj2YjC4+rZyM3r8D/0klNnYG3Mo7b77Vt3wctTVu55bM+BW42o6FXD1vmMZ57a
hDDBhbFmtGKkOjsGbjTkxFK9m92j3tAqv0mubUCoagFzMZ2lJTljnxOAzLIplwfq
tOsTuOU5O4GarBU8Tsu60JYMufLIiyztcwIBAg==
-----END DH PARAMETERS-----
EOF13

 # Getting all dns inside resolv.conf then use as Default DNS for our openvpn server
echo "push \"dhcp-option DNS 1.1.1.1\"" >> /etc/openvpn/server_tcp.conf
echo "push \"dhcp-option DNS 1.0.0.1\"" >> /etc/openvpn/server_tcp.conf
echo "push \"dhcp-option DNS 1.1.1.1\"" >> /etc/openvpn/server_udp.conf
echo "push \"dhcp-option DNS 1.0.0.1\"" >> /etc/openvpn/server_udp.conf

 # Creating a New update message in server.conf
 cat <<'NUovpn' > /etc/openvpn/server.conf
 # New Update are now released, OpenVPN Server
 # are now running both TCP and UDP Protocol. (Both are only running on IPv4)
 # But our native server.conf are now removed and divided
 # Into two different configs base on their Protocols:
 #  * OpenVPN TCP (located at /etc/openvpn/server_tcp.conf
 #  * OpenVPN UDP (located at /etc/openvpn/server_udp.conf
 # 
 # Also other logging files like
 # status logs and server logs
 # are moved into new different file names:
 #  * OpenVPN TCP Server logs (/etc/openvpn/tcp.log)
 #  * OpenVPN UDP Server logs (/etc/openvpn/udp.log)
 #  * OpenVPN TCP Status logs (/etc/openvpn/tcp_stats.log)
 #  * OpenVPN UDP Status logs (/etc/openvpn/udp_stats.log)
 #
 # Server ports are configured base on env vars
 # executed/raised from this script (OpenVPN_TCP_Port/OpenVPN_UDP_Port)
 #
 # Enjoy the new update
 # Script Updated by DeviVPN
NUovpn

 # Getting some OpenVPN plugins for unix authentication
 cd
 wget https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/plugin.tgz
 tar -xzvf /root/plugin.tgz -C /etc/openvpn/
 rm -f plugin.tgz

 # Iptables Rule for OpenVPN server
 cat <<'EOFipt' > /etc/openvpn/openvpn.bash
#!/bin/bash
PUBLIC_INET="$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)"
IPCIDR='10.200.0.0/16'
IPCIDR2='10.201.0.0/16'
iptables -I FORWARD -s $IPCIDR -j ACCEPT
iptables -I FORWARD -s $IPCIDR2 -j ACCEPT
iptables -t nat -A POSTROUTING -o $PUBLIC_INET -j MASQUERADE
iptables -t nat -A POSTROUTING -s $IPCIDR -o $PUBLIC_INET -j MASQUERADE
iptables -t nat -A POSTROUTING -s $IPCIDR2 -o $PUBLIC_INET -j MASQUERADE
EOFipt
chmod +x /etc/openvpn/openvpn.bash
 
 # Starting OpenVPN server
 systemctl start openvpn@server_tcp
 systemctl enable openvpn@server_tcp
 systemctl start openvpn@server_udp
 systemctl enable openvpn@server_udp
 
 autokill 2

# Setting Server
wget -O /etc/rc.local "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/rc.local"
chmod +x /etc/rc.local
#wget -O /etc/iptables.up.rules "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/iptables.up.rules"
#sed -i "s/ipserver/$myip/g" /etc/iptables.up.rules
#iptables-restore < /etc/iptables.up.rules
# Badvpn
echo "#!/bin/bash
if [ "'$1'" == start ]
then
badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 1000 --max-connections-for-client 100 > /dev/null &
echo 'Badvpn Run On Port 7300
 
Finishing Installation.....'
fi
if [ "'$1'" == stop ]
then
badvpnpid="'$(ps x |grep badvpn |grep -v grep |awk '"{'"'print $1'"'})
kill -9 "'"$badvpnpid" >/dev/null 2>/dev/null
kill $badvpnpid > /dev/null 2> /dev/null
kill "$badvpnpid" > /dev/null 2>/dev/null''
kill $(ps x |grep badvpn |grep -v grep |awk '"{'"'print $1'"'})
killall badvpn-udpgw
fi" > /bin/badvpn
chmod +x /bin/badvpn
if [ -f /usr/local/bin/badvpn-udpgw ]; then
echo -e "\033[1;32mBadvpn Installing\033[0m"
exit
else
clear
fi
if [ -f /usr/bin/badvpn-udpgw ]; then
echo -e "\033[1;32mBadvpn Installing\033[0m"
exit
else
clear
fi
echo -e "\033[1;31m           Installing Badvpn\n\033[1;37mInstalling gcc Cmake make g++ openssl etc...\033[0m"
apt-get update >/dev/null 2>/dev/null
apt-get install -y nano >/dev/null 2>/dev/null
apt-get install -y sudo >/dev/null 2>/dev/null
apt-get install -y gcc >/dev/null 2>/dev/null
apt-get install -y make >/dev/null 2>/dev/null
apt-get install -y g++ >/dev/null 2>/dev/null
apt-get install -y openssl >/dev/null 2>/dev/null
apt-get install -y build-essential >/dev/null 2>/dev/null
apt-get install -y cmake >/dev/null 2>/dev/null
echo -e "\033[1;37mDownloading File Badvpn"; cd
wget https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/BadVPN/badvpn-1.999.128.tar.bz2 -o /dev/null
echo -e "Extract Badvpn"
tar -xf badvpn-1.999.128.tar.bz2
echo -e "Setup configuration"
mkdir /etc/badvpn-install
cd /etc/badvpn-install
cmake ~/badvpn-1.999.128 -DBUILD_NOTHING_BY_DEFAULT=1 -DBUILD_UDPGW=1 >/dev/null 2>/dev/null
echo -e "Compile Badvpn\033[0m"
make install
clear
echo -e "\033[1;32m             Installation Complete\033[0m" 
echo -e "\033[1;37mCommand:\n\033[1;31mbadvpn start\033[1;37m Run Badvpn Service"
echo -e "\033[1;31mbadvpn stop \033[1;37m Stop Badvpn Service\033[0m"
rm -rf /etc/badvpn-install
cd ; rm -rf badvpn.sh badvpn-1.999.128/ badvpn-1.999.128.tar.bz2 >/dev/null 2>/dev/null

# Stunnel
apt-get install stunnel4 -y
wget -P /etc/stunnel/ "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Stunnel/stunnel.conf"
 # Creating stunnel certifcate using openssl
openssl req -new -x509 -days 9999 -nodes -subj "/C=MY/ST=SBH/L=TWU/O=DEVIVPN/OU=DEVIVPN/CN=DEVIVPN" -out /etc/stunnel/stunnel.pem -keyout /etc/stunnel/stunnel.pem &> /dev/null
##  > /dev/null 2>&1
sed -i 's/ENABLED=0/ENABLED=1/g' /etc/default/stunnel4

# nginx
apt-get -y install nginx libexpat1-dev libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
wget -O /etc/nginx/nginx.conf "https://raw.githubusercontent.com/xiihaiqal/AutoScriptVPS/master/Files/Nginx/nginx.conf"
mkdir -p /home/vps/public_html
wget -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/xiihaiqal/AutoScriptVPS/master/Files/Nginx/vps.conf"

# install vnstat gui
apt-get install vnstat
cd /home/vps/public_html/
wget http://www.sqweek.com/sqweek/files/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i "s/eth0/venet0/g" config.php
sed -i "s/\$iface_list = array('venet0', 'sixxs');/\$iface_list = array('venet0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i "s/Internal/Internet/g" config.php
sed -i "/SixXS IPv6/d" config.php
sed -i 's/Interface "tun0"/Interface "ens3"/g' /etc/vnstat.conf	
service vnstat restart

# Now creating all of our OpenVPN Configs 
cat <<EOF16> /home/vps/public_html/client-tcp.ovpn
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
client
dev tun
proto tcp
setenv FRIENDLY_NAME "TCP"
remote $myip 110
remote-cert-tls server
connect-retry infinite
resolv-retry infinite
nobind
persist-key
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
comp-lzo
redirect-gateway def1
setenv CLIENT_CERT 0
reneg-sec 0
verb 1
http-proxy $myip 8080

<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF16

cat <<EOF162> /home/vps/public_html/client-udp.ovpn
# Thanks for using this script, Enjoy Highspeed OpenVPN Service
client
dev tun
proto udp
setenv FRIENDLY_NAME "UDP"
remote $myip 25000
remote-cert-tls server
resolv-retry infinite
float
fast-io
nobind
persist-key
persist-remote-ip
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
comp-lzo
redirect-gateway def1
setenv CLIENT_CERT 0
reneg-sec 0
verb 1

<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF162

 # Creating OVPN download site index.html
cat <<'mySiteOvpn' > /home/vps/public_html/index.html
<!DOCTYPE html>
<html lang="en">

<head><link rel="icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/universal-3-4/21/130-512.png"><meta charset="utf-8" /><title>KingkongVPN OVPN Config Download</title><meta name="description" content="KingKongVPN Server" /><meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" /><meta name="theme-color" content="#000000" /><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"><link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"><link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet"></head><body><div class="container justify-content-center" style="margin-top:9em;margin-bottom:5em;"><div class="col-md"><div class="view"><img src="https://openvpn.net/wp-content/uploads/openvpn.jpg" class="card-img-top"><div class="mask rgba-white-slight"></div></div><div class="card"><div class="card-body"><h5 class="card-title">Config List</h5><br /><ul class="list-group">

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>For UDP <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> UDP Server For OpenVPN</small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://IP-ADDRESS:NGINXPORT/client-udp.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>

<li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>For TCP <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> TCP Server For OpenVPN</small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://IP-ADDRESS:NGINXPORT/client-tcp.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>

<iframe width="100%" height="690px" frameborder="0" src="http://fast.devivpn.ml"></iframe>

</ul></div></div></div></div></body></html>
mySiteOvpn
 
 # Setting template's correct name,IP address and nginx Port
 sed -i "s|NGINXPORT|80|g" /home/vps/public_html/index.html
 sed -i "s|IP-ADDRESS|$myip|g" /home/vps/public_html/index.html
 
 # Creating all .ovpn config archives
 cd /home/vps/public_html/
 zip -qq -r configs.zip *.ovpn
 cd
 
 # Allowing ALL TCP ports for our machine (Simple workaround for policy-based VPS)
iptables -A INPUT -s $(wget -4qO- http://ipinfo.io/ip) -p tcp -m multiport --dport 1:65535 -j ACCEPT

# Allowing OpenVPN to Forward traffic
/bin/bash /etc/openvpn/openvpn.bash
sed -i '$ i\bash /etc/openvpn/openvpn.bash' /etc/rc.local

### OpenVPN Monitor
wget -O /etc/nginx/conf.d/monitoring.conf "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/OpenVPN-Monitor/monitoring.conf"
apt-get install -y gcc libgeoip-dev python-virtualenv python-dev geoip-database-extra uwsgi uwsgi-plugin-python
wget -O /srv/openvpn-monitor.tar.gz "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/OpenVPN-Monitor/openvpn-monitor.tar.gz"
cd /srv
tar xf openvpn-monitor.tar.gz
cd openvpn-monitor
virtualenv .
. bin/activate
pip install -r requirements.txt
wget -O /etc/uwsgi/apps-available/openvpn-monitor.ini "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/OpenVPN-Monitor/openvpn-monitor.ini"
ln -s /etc/uwsgi/apps-available/openvpn-monitor.ini /etc/uwsgi/apps-enabled/

# GeoIP For OpenVPN Monitor
mkdir -p /var/lib/GeoIP
wget -O /var/lib/GeoIP/GeoLite2-City.mmdb.gz "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/OpenVPN-Monitor/GeoLite2-City.mmdb.gz"
gzip -d /var/lib/GeoIP/GeoLite2-City.mmdb.gz
printf "admin:$(openssl passwd -apr1 admin123)\n" >> /etc/nginx/.htpasswd
cd

# etc
wget -O /etc/motd "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/motd"
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
useradd -m system
echo "system:devi2020" | chpasswd
echo "UPDATE AND INSTALL COMPLETE COMPLETE 99% BE PATIENT"
rm AutoScript;rm 'Menu 1';rm *.txt;rm *.tar.gz;rm *.deb;rm *.asc;rm *.zip;rm ddos*;
clear

#V2ray
service nginx stop
bash <(curl -Ls https://blog.sprov.xyz/v2-ui.sh)

#speedtest
sudo apt-get update
export INSTALL_KEY=379CE192D401AB61
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
echo "deb https://ookla.bintray.com/debian generic main" | sudo tee  /etc/apt/sources.list.d/speedtest.list
sudo apt-get update
sudo apt-get install speedtest

# Lock Dropbear Expired ID
wget -O /usr/local/bin/lockidexp.sh "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/lockidexp.sh"
chmod +x /usr/local/bin/lockidexp.sh
crontab -l > mycron
echo "1 8 * * * /usr/local/bin/lockidexp.sh" >> mycron
crontab mycron
rm mycron

# BlockTorrent
wget -O /usr/local/bin/BlockTorrentEveryReboot "https://raw.githubusercontent.com/Devi/AutoScriptVPS/master/Files/Other/BlockTorrentEveryReboot"
chmod +x /usr/local/bin/BlockTorrentEveryReboot
crontab -l > mycron
echo "@reboot /usr/local/bin/BlockTorrentEveryReboot" >> mycron
crontab mycron
rm mycron

# restart service
badvpn start
service stunnel4 restart
usermod -aG sudo system
service ssh restart
service openvpn restart
service privoxy restart
service dropbear restart
service nginx restart
bash /etc/openvpn/openvpn.bash	
service webmin restart
service squid restart
service fail2ban restart

# grep ports 
opensshport="$(netstat -ntlp | grep -i ssh | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
dropbearport="$(netstat -nlpt | grep -i dropbear | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
privoxyport="$(netstat -nlpt | grep -i privoxy | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
stunnel4port="$(netstat -nlpt | grep -i stunnel | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
squidport="$(cat /etc/squid/squid.conf | grep -i http_port | awk '{print $2}')"
nginxport="$(netstat -nlpt | grep -i nginx| grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"

# Info
clear
echo -e ""
echo -e "\e[94m[][][]======================================[][][]" | tee -a log-install.txt
echo -e "\e[0m                                                   " | tee -a log-install.txt
echo -e "\e[94m           AutoScriptVPS by DeviVPN           " | tee -a log-install.txt
echo -e "\e[94m             https://m.facebook.com/epep.burik.31149            " | tee -a log-install.txt
echo -e "\e[94m                    Services                      " | tee -a log-install.txt
echo -e "\e[94m                                                  " | tee -a log-install.txt
echo -e "\e[94m    OpenSSH        :   "$opensshport | tee -a log-install.txt
echo -e "\e[94m    Dropbear       :   "$dropbearport | tee -a log-install.txt
echo -e "\e[94m    SSL            :   "$stunnel4port | tee -a log-install.txt
echo -e "\e[94m    OpenVPN        :   "110{TCP} 25000{UDP} | tee -a log-install.txt
echo -e "\e[94m    Port Squid     :   "$squidport | tee -a log-install.txt
echo -e "\e[94m    Nginx          :   "$nginxport | tee -a log-install.txt
echo -e "\e[94m    Privoxy        :   "$privoxyport | tee -a log-install.txt
echo -e "\e[94m    Badvpn UDPGW   :   "7300       | tee -a log-install.txt
echo -e "\e[94m                                                  " | tee -a log-install.txt
echo -e "\e[94m              Other Features Included             " | tee -a log-install.txt
echo -e "\e[94m                                                  " | tee -a log-install.txt
echo -e "\e[94m    Timezone       :   Asia/Mataram (GMT +8) " | tee -a log-install.txt
echo -e "\e[94m    Webmin         :   http://$myip:10000/        " | tee -a log-install.txt
echo -e "\e[94m    V2ray Panel    :   http://$myip:65432/        " | tee -a log-install.txt
echo -e "\e[94m    V2ray Username :   admin                      " | tee -a log-install.txt
echo -e "\e[94m    V2ray password :   admin                      " | tee -a log-install.txt
echo -e "\e[94m    Download Site  :   http://$myip:80/           " | tee -a log-install.txt
echo -e "\e[94m    OpenVPN Monitor:   http://$myip:89/           " | tee -a log-install.txt
echo -e "\e[94m    Username       :   admin                      " | tee -a log-install.txt
echo -e "\e[94m    Password       :   admin123                   " | tee -a log-install.txt
echo -e "\e[94m    IPV6           :   [OFF]                      " | tee -a log-install.txt
echo -e "\e[94m    Cron Scheduler :   [ON]                       " | tee -a log-install.txt
echo -e "\e[94m    Fail2Ban       :   [ON]                       " | tee -a log-install.txt
echo -e "\e[94m    DDOS Deflate   :   [ON]                       " | tee -a log-install.txt
echo -e "\e[0m                                                   " | tee -a log-install.txt
echo -e "\e[94m[][][]======================================[][][]\e[0m" | tee -a log-install.txt
echo -e "\e[0m                                                   "
read -n1 -r -p "          Press Any Key To Enter Menu          "
menu
cd
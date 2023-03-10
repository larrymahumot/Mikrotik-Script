# CREATING CA
/certificate add name=CA country="PH" state="Mikrotik" locality="Mikrotik"
organization="Mikrotik" unit="Mikrotik" common-name="CA"
key-size=4096 days-valid=3650 key-usage=crl-sign,key-cert-sign

# SIGN CA
/certificate sign CA ca-crl-host=127.0.0.1 name="CA"

# CREATE SERVER cert
/certificate add name=SERVER country="PH" state="Mikrotik"
locality="Mikrotik" organization="Mikrotik" unit="Mikrotik"
common-name="SERVER" key-size=4096 days-valid=3650
key-usage=digital-signature,key-encipherment,tls-server

# SIGN SERVER WITH CA
/certificate sign SERVER ca="CA" name="SERVER"

# CREATE TEMPLATE FOR EACH USER
/certificate add name=USER-TEMPLATE country="PH" state="Mikrotik"
locality="Mikrotik" organization="Mikrotik" unit="Mikrotik"
common-name="USERS" key-size=4096 days-valid=3650 key-usage=tls-client

# SIGN TEMPLATE WITH CA
/certificate sign USER-TEMPLATE ca="CA" name="USER-TEMPLATE"

# EXPORT CA cert
/certificate export-certificate CA export-passphrase=""

# CREATING USER01
/certificate add name=USER01 copy-from="USER-TEMPLATE"
common-name="USER01"

# SIGN USER01 WITH CA
/certificate sign USER01 ca="CA" name="USER01"

# EXPORT USER01 certs WITH passphrase
/certificate export-certificate USER01 export-passphrase=password

# POOL OVPN
/ip pool add name=OVPN-POOL ranges=10.10.1.100-10.10.1.200
/ip dhcp-server network add address=10.10.1.0/24 comment=VPN
dns-server=8.8.8.8 gateway=192.168.1.1 netmask=24
/ppp profile add dns-server=8.8.8.8 local-address=OVPN-POOL
name=OVPN-PERFIL  remote-address=OVPN-POOL use-compression=no
use-encryption=required
/interface ovpn-server server set certificate=SERVER
cipher=aes256 default-profile=OVPN-PERFIL
enabled=yes  require-client-certificate=yes

# USER01 password
/ppp secret add name=USER01 password=password profile=OVPN-PERFIL
service=ovpn
/ip firewall filter add action=accept chain=input comment="ACCEPT VPN"
dst-port=1194 protocol=tcp
/ip firewall nat add chain=srcnat action=masquerade
src-address=10.10.1.0/24 log=no log-prefix="" comment="OPENVPN -> LAN"
/certificate add name=USER01 copy-from="USER-TEMPLATE"
common-name="USER01"
/certificate sign USER01 ca="CA" name="USER01"
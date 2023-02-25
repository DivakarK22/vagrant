cat <<EOF > /etc/sysconfig/network-scripts/ifcfg-eth0
TYPE=Ethernet
BOOTPROTO=none
#Server IP #
IPADDR=192.168.1.52
# Subnet #
PREFIX=24
# Set default gateway IP #
GATEWAY=192.168.1.1
# Set dns servers #
DNS1=192.168.1.1
DNS2=8.8.8.8
DNS3=8.8.4.4
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
# Disable ipv6 #
IPV6INIT=no
NAME=eth0
# This is system specific and can be created using 'uuidgen eth0' command #
DEVICE=eth0
ONBOOT=yes
EOF

cat <<EOF > /etc/hostname
grafana
EOF

echo "updated all files"

sudo reboot
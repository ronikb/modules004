#This script will enable ssh access from the following specified #IP address
#!/bin/sh
ipaddress1=115.248.183.170
ipaddress2=59.162.126.17
ipaddress3=71.241.252.214

#This will enable firewall active
echo "Enabling ufw service"
sudo ufw enable

#This will enable the ssh access only from the above ip address
echo "Allowing SSH access from $ipaddress1"
sudo ufw allow from $ipaddress1 to any port 22
echo Result: $?
echo "Allowing SSH access from $ipaddress2"
sudo ufw allow from $ipaddress2 to any port 22
echo Result: $?
echo "Allowing SSH access from $ipaddress3"
sudo ufw allow from $ipaddress3 to any port 22
echo Result: $?
#This will allow everyone to access http (port80)
echo "Allowing HTTP access from everyone"
sudo ufw allow 80
echo Result: $?
#This will allow ufw service active in system startup
echo "activating ufw service with system startup"
/lib/ufw/ufw-init start
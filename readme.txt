#This is the medigy installation steps for Ubuntu/Debian distributions.

sudo apt-get install puppet
sudo apt-get install git-core
sudo ssh-keygen -t rsa 
sudo vi /root/.ssh/id_rsa.pub
#Paste the ssh key into github.

sudo git clone git@github.com:netspective/operations.git
cd operations/configuration/server/medigy
sudo mkdir /etc/puppet/modules
sudo cp -R * /etc/puppet/modules
cd /etc/puppet
sudo cp modules/nodes.pp manifests/
sudo puppet -v manifests/nodes.pp
sudo reboot



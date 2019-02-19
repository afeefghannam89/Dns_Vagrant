! /bin/bash
 
# Zeit und Benutzer Managment
timedatectl set-timezone Europe/Berlin
userdel -r vagrant
useradd -c "NETWAYS Training" -p `openssl passwd  -1 netways` training
 
if [ -f /etc/sudoers.d/vagrant ]; then
  rm /etc/sudoers.d/vagrant
fi
 
echo "%training ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/training
echo -e 'Username: training\nPassword: netways\n\n' >> /etc/issue
#echo -e '192.168.56.104 \t dns1.localdomain\n192.168.56.105 \t dns2.localdomain' >> /etc/hosts
localectl set-keymap de
echo -e 'netways\nnetways' | passwd
yum -y install vim-enhanced  bash-completion openssh-server  openssh-clients
yum -y install epel-release
source /etc/profile.d/bash_completion.sh


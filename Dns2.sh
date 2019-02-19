#! /bin/bash
 
# Benutzer Management
timedatectl set-timezone Europe/Berlin
userdel -r vagrant
useradd -c "NETWAYS Training" -p `openssl passwd  -1 netways` training
 
if [ -f /etc/sudoers.d/vagrant ]; then
  rm /etc/sudoers.d/vagrant
fi
 
echo "%training ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/training
echo -e 'Username: training\nPassword: netways\n' >> /etc/issue
 
#echo -e '192.168.56.104 \t dns1.localdomain\n192.168.56.105 \t dns2.localdomain' >> /etc/hosts
localectl set-keymap de
echo -e "netways\nnetways" | passwd
yum -y install vim-enhanced openssh-server openssh-clients expect bash-completion bash-completion-extras
source /etc/profile.d/bash_completion.sh

#if [ ! -f /home/training/.ssh/id_rsa ]; then
#su - training -c 'yes | ssh-keygen -q -t rsa -N "" -f /home/training/.ssh/id_rsa'
#fi
#su - training -c  ' yes | ssh-keygen -q -t rsa -N "" -f /home/training/.ssh/id_rsa'

#TEXT=$'Host dns1.localdomain
#  StrictHostKeyChecking no'
#FILE=/home/training/.ssh/config
#grep -qF -- "$TEXT" "$FILE" || echo "$TEXT" >> "$FILE"
#chown training.training /home/training/.ssh/config

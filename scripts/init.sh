#!/bin/sh

echo "check update"
apt-get update > /dev/null
echo "install vim"
apt-get install vim -y > /dev/null

echo "install git"
apt-get install git -y > /dev/null

echo "install zsh"
apt-get install zsh -y > /dev/null

echo "install oh-my-zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh > /dev/null
chown vagrant .oh-my-zsh
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc > /dev/null
chown vagrant .zshrc

echo "change shell"
chsh -s /bin/zsh vagrant

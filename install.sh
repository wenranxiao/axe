#!/bin/bash

cat /proc/version | grep "Ubuntu"
if [ $? -eq 0 ]; then
echo "Ubuntu"
is_red_hat=0
fi

cat /proc/version | grep "Red Hat"
if [ $? -eq 0 ]; then
echo "Red Hat"
if_red_hat=1
fi

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/.gitignore ~/.gitignore

git config --global user.name "Wran"
git config --global user.email "xiaowenran@unitedstack.com"
git config --global core.excludesfile $HOME/.gitignore
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch

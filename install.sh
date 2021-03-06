#!/bin/bash

cat /proc/version | grep "Ubuntu"
if [ $? -eq 0 ]
then
echo "Ubuntu"
is_ubuntu=1
fi

cat /proc/version | grep "Red Hat"
if [ $? -eq 0 ]
then
echo "Red Hat"
is_red_hat=1
fi
cp -r ~/axe/*  ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/.gitignore ~/.gitignore

cp ~/.vim/tmux.conf  ~/.tmux.conf

if [ $is_red_hat = 1 ]; then
    yum install ctags -y
elif [ $is_ubuntu = 1 ]; then
    apt-get install ctags -y
fi


git config --global user.name "Wenran Xiao"
#git config --global user.email "xiaowr1@lenovo.com"
git config --global user.email "wenranxiao@gmail.com"
#git config --global user.email "xiaowenran@kingsoft.com"
git config --global core.excludesfile $HOME/.gitignore
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch

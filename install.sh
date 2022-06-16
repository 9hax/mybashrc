#!/bin/bash

# This file is used to automatically set up an Ubuntu system with a good looking shell and some cool aliases.

read -p "Do you want to install 9haxify to this users home directory? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

 echo "Please authenticate."
 sudo apt-get install -y git aptitude  
 
 echo "Cloning mybashrc Repository..."
 git clone https://github.com/9hax/mybashrc  
 
 echo "Setting up mybashrc environment in current folder..."
 cd mybashrc
 mv .bashaliases ~
 mv .bashfancy ~
 mv .bashrc ~
 mv todo ~
 cd ..
 rm -rf mybashrc
 
 echo "The current todo file is:"
 source ~/todo
 
 read -p "Installation finished. Do you want to activate your new installation now? (N) " -n 1 -r
 if [[ $REPLY =~ ^[Yy]$ ]]
 echo
 then
  source ~/.bashrc
 fi

fi

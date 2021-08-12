#!/bin/bash

sudo apt update

sudo apt install htop

sudo apt install gnome-tweak-tool

################
##  SLACK     ##
################
sudo snap install slack --classic

############################################# docker ###################################################
## https://www.edivaldobrito.com.br/como-instalar-o-google-chrome-no-ubuntu-20-04-via-repositorio-oficial/ ###
########################################################################################################

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update

sudo apt install google-chrome-stable

############################################# docker ###################################################
## https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-pt ###
########################################################################################################

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

sudo systemctl status docker

sudo usermod -aG docker ${USER}

su - ${USER}



############################################# git ###########################################
## https://www.digitalocean.com/community/tutorials/how-to-install-git-on-ubuntu-20-04-pt ###
#############################################################################################

sudo apt update

sudo apt install git

git config --global user.name "Your Name"
git config --global user.email "youremail@domain.com"


############ vscode  #############
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code


############ vscode extensions  #############

code --install-extension dracula-theme.theme-dracula

code --enable-proposed-api dracula-theme.theme-dracula

code --enable-proposed-api eamodio.gitlens
code --enable-proposed-api github.vscode-pull-request-github
code --enable-proposed-api tejasvi.rainbow-brackets-2

code --install-extension eliverlara.sweet-vscode-icons

code --install-extension ms-vsliveshare.vsliveshare

code --install-extension ms-azuretools.vscode-docker

code --install-extension foxundermoon.shell-format


####################### zsh ###############################
## https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH #
###########################################################

apt install zsh

############### powerlevel10k ################
## https://github.com/romkatv/powerlevel10k ##
##############################################

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


##################################### miniconda ##################################################
## https://conda.io/projects/conda/en/latest/user-guide/install/linux.html#install-linux-silent ##
##################################################################################################

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh


##################################
## https://dbeaver.io/download/ ##
##################################
sudo snap install dbeaver-ce

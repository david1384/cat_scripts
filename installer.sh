#!/bin/bash

installer() {
  echo -e "You want to install Cat scripts to your computer yes(install)/no(uninstall)?";
  read answer;

  case $answer in
  yes|y) #Unlock statement
     echo "The installer started.()you will be redirected to the download sites of the most important repostory from this code.(this code will breack your system if you have installed katoolin)";
     $(firefox https://dl.genymotion.com/releases/genymotion-3.2.1/genymotion-3.2.1-linux_x64.bin)
     sudo apt-get update
     sudo apt-get install vm-manager
     sudo apt-get install zram-config
     sudo apt-get install util-linux
     sudo apt-get install virtualbox
     temsudo apt-get --reinstall install virtualbox-dkms
     chmod +x genymotion-3.2.1-linux_x64.bin
     ./genymotion-3.2.1-linux_x64.bin -d {Genymotion_install_path}
     sudo dpkg --add-architecture i386
     wget -nc https://dl.winehq.org/wine-builds/winehq.key
     sudo apt-key add winehq.key
     sudo add-apt-repository ppa:lutris-team/lutris
     sudo apt install lutris
     sudo apt-get install adb
     sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
     sudo echo '# Kali linux repositories | Added by Cat_scripts\ndeb http://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
     chmod +x ~/Downloads/cat_scripts/apk
     chmod +x ~/Downloads/cat_scripts/cats
     chmod +x ~/Downloads/cat_scripts/wcp
     chmod +x ~/Downloads/cat_scripts/xp
     chmod +x ~/Downloads/cat_scripts/conection
     chmod +x ~/Downloads/cat_scripts/download
     chmod +x ~/Downloads/cat_scripts/exe
     chmod +x ~/Downloads/cat_scripts/lsteam
     chmod +x ~/Downloads/cat_scripts/minecraft
     chmod +x ~/Downloads/cat_scripts/roblox
     chmod +x ~/Downloads/cat_scripts/track
     chmod +x ~/Downloads/cat_scripts/vm
     chmod +x ~/Downloads/cat_scripts/sus
     cd ~/
     sudo echo 'export PATH=$PATH:~/Downloads/cat_scripts' >> ~/.bashrc
     sudo echo 'export PATH=$PATH:~/Downloads/{Genymotion_install_path}/genymotion' >> ~/.bashrc
     winecfg
     ;;
  no|n) #Lock statement
     sudo apt-get --purge remove genymotion
     sudo rm -rf /opt/cxoffice rm -rf ~/.cxoffice
     rm ~/.wine
     echo "Bye bye.";
     
     
  esac	
}

installer



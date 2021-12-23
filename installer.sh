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
     chmod +x ~/Downloads/apk
     chmod +x ~/Downloads/cats
     chmod +x ~/Downloads/wcp
     chmod +x ~/Downloads/xp
     chmod +x ~/Downloads/conection
     chmod +x ~/Downloads/download
     chmod +x ~/Downloads/exe
     chmod +x ~/Downloads/lsteam
     chmod +x ~/Downloads/minecraft
     chmod +x ~/Downloads/roblox
     chmod +x ~/Downloads/track
     chmod +x ~/Downloads/vm
     chmod +x ~/Downloads/sus
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



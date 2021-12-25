#!/bin/bash

# Get the options
while getopts ":hn:" option; do
   case $option in
      h) # display Help
         tput setaf 3
         echo -e "\nThis are cat scripts premium edition for rpi an desktop.\n";
         tput sgr0
         echo -e "\nThese are the commands ,if you write them in a terminal they will do what is writed here:";
         echo -e "track - make a trackurl or track ip location\n";
         echo -e "lsteam - run a lot of games on linux\n";
         echo -e "exe - run exe files in 32 or 64 bites\n";
         echo -e "apk - power on a android vm to run apk files\n";
         echo -e "download - install apks for the 'apk' command\n";
         echo -e "minecraft - run/install original minecraft game\n";
         echo -e "roblox-start an roblox installer named 'grapejuice'\n";
         echo -e "vm - start a windows/mac/android vm\n";
         echo -e "wcp - start a windows command promp in linux\n";
         echo -e "powershell - will start a windows powershell\n";
         echo -e "phone - will controll evry phone connected with usb\n";
         echo -e "sus - install Among Us on linux \n";
         echo -e "blooket - chat at the school game named blooket\n";
         echo -e "nintendo - play new nintendo switch offline games on your pc";
         ;;
     \?) # Invalid option
         echo "Error: Invalid option"
         ;;
   esac
done

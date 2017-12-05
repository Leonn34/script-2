#!/bin/bash
corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

clear

echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"
echo -e "\033[1;32m         _   _               _ _                    _                 \033[0m"
echo -e "\033[1;32m        / \ | |_ _   _  __ _| (_)______ _ _ __   __| | ___            \033[0m" 
echo -e "\033[1;32m       / _ \| __| | | |/ _  | | |_  / _  |  _ \ / _  |/ _ \           \033[0m" 
echo -e "\033[1;32m      / ___ \ |_| |_| | (_| | | |/ / (_| | | | | (_| | (_) | _ _      \033[0m" 
echo -e "\033[1;32m     /_/   \_\__|\__,_|\__,_|_|_/___\__,_|_| |_|\__,_|\___(_|_|_)     \033[0m"
echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"

sleep 4

rm /bin/menu.sh
wget -c -P /bin https://raw.githubusercontent.com/Leonn34/script-2/master/scripts/menu.sh
chmod +x /bin/menu.sh
clear

cd /bin

if diff menu menu.sh; then
  echo "não houve mudanças"
  sleep 5
else
  echo "houve mudanças, atualizando..."
  sleep 5
  mv menu.sh menu 1>/dev/null 2>/dev/null
  rm /bin/att

	wget -c -P /bin https://raw.githubusercontent.com/Leonn34/script-2/master/scripts/att.sh -O /bin/att
	clear
	chmod +x /bin/att
	clear
	bash /bin/att

fi





#sleep 1

#echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"
#echo -e "\033[1;32m                _   _ By: Sousa Tips_ _             _                 \033[0m"
#echo -e "\033[1;32m               / \ | |_ _   _  __ _| (_)______   __| | ___            \033[0m" 
#echo -e "\033[1;32m              / _ \| __| | | |/ _  | | |_  / _  / _  |/ _ \           \033[0m" 
#echo -e "\033[1;32m             / ___ \ |_| |_| | (_| | | |/ / (_|  (_| | (_) |          \033[0m" 
#echo -e "\033[1;32m            /_/   \_\__|\__,_|\__,_|_|_/___\__,_\__,_|\___/           \033[0m"
#echo -e "\033[1;30m----------------------------------------------------------------------\033[0m"

#clear
#exit

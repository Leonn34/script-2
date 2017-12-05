#!/bin/bash
#CORES:
#ESTILOS:
#00: Nenhum
#01: Negrito
#04: Sublinhado
#05: Piscante
#07: Reverso
#08: Oculto
####################################
#CORES TEXTO:
#30: Preto
#31: Vermelho
#32: Verde
#33: Amarelo
#34: Azul
#35: Magenta (Rosa)
#36: Ciano (Azul Ciano)
#37: Branco
####################################
#CORES FUNDO:
#40: Preto
#41: Vermelho
#42: Verde
#43: Amarelo
#44: Azul
#45: Magenta (Rosa)
#46: Ciano (Azul Ciano)
#47: Branco
####################################
#EXEMPLO:
#Viva o Linux
#echo -e '\033[01;37mViva o \033[04;32mLinux\033[00;37m!!!'

clear
  #TITULO
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  apt-get install figlet -y >/dev/null
  tput setaf 3 ; tput bold ; figlet -f slant Script SSH ; tput sgr0
  echo -e  "\033[44;1;37m                                     VER. BETA 0.3\033[0;37m "
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  sleep 0.2
  tput setaf 3 ; tput bold ; echo " Powered by | Sousa Tips ®" ; tput sgr0
  # MENU
  sso=$(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //')
  tput setaf 5 ; tput bold ; echo " Seu sistema:" $sso
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  tput setaf 6 ; tput bold ; echo "                                   USUÁRIOS ON:" $(ps x | grep hd | grep -v root | grep priv |wc -l) ; tput sgr0 
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  sleep 0.2
  echo -e "\033[01;33m[1] \033[01;37mVERIFICAR ATUALIZAÇÕES\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[2] \033[01;37mCRIAR USUÁRIO SSH\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[3] \033[01;37mCRIAR BACKUP USUÁRIO\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[4] \033[01;37mALTERAR DATA DO USUÁRIO\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[5] \033[01;37mALTERAR LIMITE DE CONEXÕES\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[6] \033[01;37mMUDAR SENHA\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[7] \033[01;37mREMOVER USUÁRIOS VENCIDOS\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[8] \033[01;37mREMOVER USUÁRIO\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[9] \033[01;37mMOSTRA NÚMERO DE CONEXÕES\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[10] \033[01;37mLIMITAR CONEXÕES \033[01;31m[screen]\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[11] \033[01;37mADICIONAR HOST\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[12] \033[01;37mREMOVER HOST\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[13] \033[01;37mLIMPAR CACHÊ\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[14] \033[01;37mBADUDP \033[01;31m[screen]\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[15] \033[01;37mINICIAR SOCKS \033[01;31m[screen]\033[00;37m"
  sleep 0.2
  echo -e "\033[01;33m[16] \033[01;37mSAIR\033[00;37m"
  sleep 0.2
  tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
  sleep 0.2
  echo ""
  
  read -p " DIGITE SUA OPÇÃO: [01-16] " opcao
  echo -e  " \033[1;30mOPÇÃO ESCOLHIDA:\033[00;37m " $opcao

  case $opcao in

    1)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      tput setaf 3 ; tput bold ; echo "Aguarde..." ; tput sgr0
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      sleep 2
      atualizar
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    2)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      # COPIEI O CÓDIGO DO CRIAR USUÁRIO AQUI:
      criarusuario      
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    3)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      # COPIEI O CÓDIGO DO CRIAR USUÁRIO AQUI:
      userbkp      
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    4)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      # COPIEI O CÓDIGO MUDAR DATA AQUI:
      mudardata
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    5)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #COPIEI O CÓDIGO ALTERAR LIMITE AQUI:
      alterarlimite
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    6)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #COPIEI O CÓDIGO ALTERAR SENHA AQUI:
      alterarsenha
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    7)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei o código expcleaner aqui:
      expcleaner
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    8)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui:
      remover
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    9)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui:
      sshmonitor
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    10)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui:
      sshlimiter
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    11)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui:
      addhost
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    12)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui;
      delhost
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    13)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui;
      clearcache
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    14)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      #copiei aqui;
      #badudp
      echo "Colocar comando para abrir"
      sleep 5
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    15)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      
      tput setaf 7 ; tput bold ; echo " Para iniciar o SOCKS: " ; tput sgr0
      tput setaf 6 ; tput bold ; echo " 1° - Entre em /bin," ;
      sleep 0.3
      echo " 2° - Abra uma sessão screen," ;
      sleep 1
      echo " 3° - Digite o comando e a porta desejada," ; 
      sleep 1
      echo " Ex:. screen python3 socks.py 80" ;
      sleep 1
      echo " 4° - Se tiver utilizando squid, comente a porta utilizada no SOCKS." ;
      sleep 1
      echo " 5° - Reinicie o squid!" ; tput sgr0
      sleep 20
      menu
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      ;;
    16)
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      tput setaf 3 ; tput bold ; echo "Saindo..." ; tput sgr0
      tput setaf 2 ; tput bold ; echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=" ; tput sgr0
      sleep 4
      clear
      exit
      ;;
    *)
      tput setaf 1 ; tput bold ; echo "OPÇÃO INVÁLIDA!!!" ; tput sgr0
      sleep 4
  esac

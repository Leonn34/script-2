#!/bin/bash
####################################
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
###############EXEMPLO:#############
#Viva o Linux
#echo -e '\033[01;37mViva o \033[04;32mLinux\033[00;37m!!!'
#############################################
##CORES DE FONTES EM BOLD,###################
##INSERIR A COR NO INÍCIO E FINALIZA COM FIM
##EXEMPLO:
## echo -e $amar"SEU_TEXTO_AQUI"$fim
#############################################
pret="\033[1;30m"
verm="\033[1;31m"
verd="\033[1;32m"
amar="\033[1;33m" 
azul="\033[1;34m"
mag="\033[1;35m"
cian="\033[1;36m"
bra="\033[1;37m"
fim="\033[0;37m"
#############################################
clear
rm /bin/menu.sh
wget -c -P /bin https://raw.githubusercontent.com/Leonn34/script-2/master/scripts/menu.sh 1>/dev/null 2>/dev/null
chmod +x /bin/menu.sh
clear

cd /bin

clear
  #TITULO
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  apt-get install figlet -y >/dev/null
  tput setaf 3 ; tput bold ; figlet -f slant Script SSH ; tput sgr0
  echo -e  "\033[44;1;37m                                     VER. BETA 0.4\033[0;37m "
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  tput setaf 3 ; tput bold ; echo " Powered by | Sousa Tips ®" ; tput sgr0
  sso=$(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //')
  echo -e $verm" Seu sistema:"$fim$cian $sso$fim
#######VERIFICAÇÃO DE ATUALIZAÇÃO####################
if diff menu menu.sh > /dev/null; then
echo -e $bra" NÃO EXISTEM ATUALIZAÇÕES DISPONÍVEIS!"$fim
else
echo -e $amar" HÁ ATUALIZAÇÕES DISPONÍVEIS!"$fim
fi
#######FIM DE ATUALIZAÇÃO############################
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  echo -e $cian"                                   USUÁRIOS ON:"$fim$verd$(ps x | grep hd | grep -v root | grep priv |wc -l)$fim 
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  # MENU
  echo -e "\033[01;33m[1] \033[01;37mAPLICAR ATUALIZAÇÕES\033[00;37m"
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
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  echo ""
  
  read -p " DIGITE SUA OPÇÃO: [01-16] " opcao
  echo -e  " \033[1;30mOPÇÃO ESCOLHIDA:\033[00;37m " $opcao

  case $opcao in

    1)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      tput setaf 3 ; tput bold ; echo "Aguarde..." ; tput sgr0
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sleep 2
      atualizar
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    2)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      # COPIEI O CÓDIGO DO CRIAR USUÁRIO AQUI:
      criarusuario      
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    3)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      # COPIEI O CÓDIGO DO CRIAR USUÁRIO AQUI:
      userbkp      
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    4)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      # COPIEI O CÓDIGO MUDAR DATA AQUI:
      mudardata
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    5)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #COPIEI O CÓDIGO ALTERAR LIMITE AQUI:
      alterarlimite
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    6)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #COPIEI O CÓDIGO ALTERAR SENHA AQUI:
      alterarsenha
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    7)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei o código expcleaner aqui:
      expcleaner
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    8)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui:
      remover
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    9)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui:
      sshmonitor
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    10)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui:
      sshlimiter
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    11)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui:
      addhost
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    12)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui;
      delhost
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    13)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui;
      clearcache
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    14)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      #copiei aqui;
      #badudp
      echo "Colocar comando para abrir"
      sleep 5
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    15)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      
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
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    16)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      tput setaf 3 ; tput bold ; echo "Saindo..." ; tput sgr0
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sleep 4
      clear
      exit
      exit1
      ;;
    *)
      tput setaf 1 ; tput bold ; echo "OPÇÃO INVÁLIDA!!!" ; tput sgr0
      sleep 4
  esac

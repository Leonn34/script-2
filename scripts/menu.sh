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
#30: pretoo
#31: Vermelho
#32: verdee
#33: amareloelo
#34: Azul
#35: Magenta (Rosa)
#36: Ciano (Azul Ciano)
#37: branconco
####################################
#CORES FUNDO:
#40: pretoo
#41: Vermelho
#42: verdee
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
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  apt-get install figlet -y >/dev/null
  tput setaf 3; tput bold; figlet -f slant Script SSH; tput sgr0
  echo -e $branco"                                     VER. BETA 0.1"$fim
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  echo -e $amarelo" Powered by | Sousa Tips ®"$fim
  sso=$(cat -n /etc/issue |grep 1 |cut -d' ' -f6,7,8 |sed 's/1//' |sed 's/      //')
  echo -e $vermelhoClaro" Seu sistema:"$fim$cyan $sso$fim
#######VERIFICAÇÃO DE ATUALIZAÇÃO####################
if diff menu menu.sh > /dev/null; then
echo -e $branco" NÃO EXISTEM ATUALIZAÇÕES DISPONÍVEIS!"$fim
else
echo -e $amarelo" HÁ ATUALIZAÇÕES DISPONÍVEIS!"$fim
fi
#######FIM DE ATUALIZAÇÃO############################
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  echo -e $cyan"                                     USUÁRIOS ON:"$fim $verdeClaro$(ps x | grep hd | grep -v root | grep priv |wc -l)$fim 
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  # MENU
  echo -e $amarelo"[1]"$fim $branco"APLICAR ATUALIZAÇÕES"$fim
  sleep 0.2
  echo -e $amarelo"[2]"$fim $branco"CRIAR USUÁRIO SSH"$fim
  sleep 0.2
  echo -e $amarelo"[3]"$fim $branco"CRIAR BACKUP USUÁRIO"$fim
  sleep 0.2
  echo -e $amarelo"[4]"$fim $branco"ALTERAR DATA DO USUÁRIO"$fim
  sleep 0.2
  echo -e $amarelo"[5]"$fim $branco"ALTERAR LIMITE DE CONEXÕES"$fim
  sleep 0.2
  echo -e $amarelo"[6]"$fim $branco"MUDAR SENHA"$fim
  sleep 0.2
  echo -e $amarelo"[7]"$fim $branco"REMOVER USUÁRIOS VENCIDOS"$fim
  sleep 0.2
  echo -e $amarelo"[8]"$fim $branco"REMOVER USUÁRIO"$fim
  sleep 0.2
  echo -e $amarelo"[9]"$fim $branco"MOSTRA NÚMERO DE CONEXÕES"$fim
  sleep 0.2
  echo -e $amarelo"[10]"$fim $branco"LIMITAR CONEXÕES"$fim $vermelhoClaro"[screen]"$fim
  sleep 0.2
  echo -e $amarelo"[11]"$fim $branco"ADICIONAR HOST"$fim
  sleep 0.2
  echo -e $amarelo"[12]"$fim $branco"REMOVER HOST"$fim
  sleep 0.2
  echo -e $amarelo"[13]"$fim $branco"LIMPAR CACHÊ"$fim
  sleep 0.2
  echo -e $amarelo"[14]"$fim $branco"BADUDP"$fim $vermelhoClaro"[screen]"$fim
  sleep 0.2
  echo -e $amarelo"[15]"$fim $branco"INICIAR SOCKS"$fim $vermelhoClaro"[screen]"$fim
  sleep 0.2
  echo -e $amarelo"[16]"$fim $branco"SAIR"$fim
  sleep 0.2
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  echo ""
  
  read -p " DIGITE SUA OPÇÃO: [01-16] " opcao
  echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  
  echo -e $preto" OPÇÃO ESCOLHIDA:"$fim $branco$opcao$fim

  case $opcao in

    1)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo -e $amarelo"Aguarde..."$fim
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sleep 2
      atualizar
      ;;
    2)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      criarusuario
      ;;
    3)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      userbkp
      ;;
    4)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      mudardata
      ;;
    5)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      alterarlimite
      ;;
    6)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      alterarsenha
      ;;
    7)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      expcleaner
      ;;
    8)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      remover
      ;;
    9)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sshmonitor
      ;;
    10)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sshlimiter
      ;;
    11)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      addhost
      ;;
    12)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      delhost
      ;;
    13)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      clearcache
      ;;
    14)
      clear
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo -e $amarelo"COMANDOS PARA RODAR O BADUDP:"$fim
      sleep 2
      echo ""
      echo -e $branco
    "1º - Abranco
     UMA SESSÃO"$bin $verdeClaro"SCREEN"$fim
      sleep 2
      echo -e $branco
    "DIGITE:"$fim $vermelhoClaro"screen"$fim$branco
    ", EM SEGUIDA APERTE"$fim $verdeClaro"ENTER"$fim
      sleep 2
      echo -e $branco
    "2º - DIGITE"$fim $verdeClaro"badudp"$fim$branco
    ", E APERTE"$fim $verdeClaro"ENTER"$fim
      sleep 2
      echo -e $branco
    "3º - PARA SAIR E DEIXAR A SESSÃO RODANDO,"$fim
      sleep 2
      echo -e $branco
    "ENTRE COM:"$fim $verdeClaro"Ctrl+A+D"$fim
      sleep 2
      echo ""
      echo -e $amarelo"OBS.: A CADA VEZ QUE FOR REINICIADO A VPS,"$fim
      echo -e $amarelo"REPITA OS MESMOS PASSOS!"$fim
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo ""
      echo "ENTER para voltar"
      read -p ""
      sleep 1
      menu
      ;;
    15)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      tput setaf 7 ; tput bold ; echo " Para iniciar o SOCKS: " ; tput sgr0
      echo ""
      tput setaf 6 ; tput bold ; echo " 1° - Entre em /bin," ;
      sleep 0.3
      echo " 2° - Abranco
     uma sessão screen," ;
      sleep 1
      echo " 3° - Digite o comando e a porta desejada," ; 
      sleep 1
      echo " Ex:. screen python3 socks.py 80" ;
      sleep 1
      echo " 4° - Se tiver utilizando squid, comente a porta utilizada no SOCKS." ;
      sleep 1
      echo " 5° - Reinicie o squid!" ; tput sgr0
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo ""
      echo "ENTER para voltar"
      read -p ""
      sleep 1
      menu
      ;;
    16)
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo -e $branco
    "Saindo..."$fim
      echo -e $verdeClaro"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sleep 4
      clear
      exit
      ;;
    *)
      echo -e $vermelhoClaro"OPÇÃO INVÁLIDA!!!"$fim
      sleep 4
      menu
  esac
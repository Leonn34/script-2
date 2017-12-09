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
  tput setaf 3; tput bold; figlet -f slant Script SSH; tput sgr0
  echo -e $bra"                                     VER. BETA 0.1"$fim
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  echo -e $amar" Powered by | Sousa Tips ®"$fim
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
  echo -e $cian"                                     USUÁRIOS ON:"$fim $verd$(ps x | grep hd | grep -v root | grep priv |wc -l)$fim 
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  # MENU
  echo -e $amar"[1]"$fim $bra"APLICAR ATUALIZAÇÕES"$fim
  sleep 0.2
  echo -e $amar"[2]"$fim $bra"CRIAR USUÁRIO SSH"$fim
  sleep 0.2
  echo -e $amar"[3]"$fim $bra"CRIAR BACKUP USUÁRIO"$fim
  sleep 0.2
  echo -e $amar"[4]"$fim $bra"ALTERAR DATA DO USUÁRIO"$fim
  sleep 0.2
  echo -e $amar"[5]"$fim $bra"ALTERAR LIMITE DE CONEXÕES"$fim
  sleep 0.2
  echo -e $amar"[6]"$fim $bra"MUDAR SENHA"$fim
  sleep 0.2
  echo -e $amar"[7]"$fim $bra"REMOVER USUÁRIOS VENCIDOS"$fim
  sleep 0.2
  echo -e $amar"[8]"$fim $bra"REMOVER USUÁRIO"$fim
  sleep 0.2
  echo -e $amar"[9]"$fim $bra"MOSTRA NÚMERO DE CONEXÕES"$fim
  sleep 0.2
  echo -e $amar"[10]"$fim $bra"LIMITAR CONEXÕES"$fim $verm"[screen]"$fim
  sleep 0.2
  echo -e $amar"[11]"$fim $bra"ADICIONAR HOST"$fim
  sleep 0.2
  echo -e $amar"[12]"$fim $bra"REMOVER HOST"$fim
  sleep 0.2
  echo -e $amar"[13]"$fim $bra"LIMPAR CACHÊ"$fim
  sleep 0.2
  echo -e $amar"[14]"$fim $bra"BADUDP"$fim $verm"[screen]"$fim
  sleep 0.2
  echo -e $amar"[15]"$fim $bra"INICIAR SOCKS"$fim $verm"[screen]"$fim
  sleep 0.2
  echo -e $amar"[16]"$fim $bra"SAIR"$fim
  sleep 0.2
  echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
  sleep 0.2
  echo ""
  
  read -p " DIGITE SUA OPÇÃO: [01-16] " opcao

  echo -e $pret" OPÇÃO ESCOLHIDA:"$fim $bra$opcao$fim

  case $opcao in

    1)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      echo -e$amar"Aguarde..."$fim
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sleep 2
      atualizar
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    2)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      criarusuario      
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    3)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      userbkp      
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    4)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      mudardata
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    5)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      alterarlimite
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    6)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      alterarsenha
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    7)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      expcleaner
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    8)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      remover
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    9)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sshmonitor
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    10)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      sshlimiter
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    11)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      addhost
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    12)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      delhost
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    13)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      clearcache
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    14)
      echo -e $verd"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      clear
      echo -e $amar"COMANDOS PARA RODAR O BADUDP:"$fim
      sleep 2
      echo -e $bra"1º - ABRA UMA SESSÃO"$bin $verd"SCREEN"$fim
      sleep 2
      echo -e $bra"DIGITE:"$fim $verm"screen"$fim, $bra"EM SEGUIDA APERTE"$fim $verd"ENTER"$fim
      sleep 2
      echo -e $bra"2º - DIGITE"$fim $verd"badudp"$fim", E APERTE ENTER"$fim
      sleep 2
      echo -e $bra"3º - PARA SAIR E DEIXAR A SESSÃO RODANDO,"$fim
      sleep 2
      echo -e $bra"ENTRE COM: Ctrl+A+D"$fim
      sleep 2
      echo -e $bra"OBS.: A CADA VEZ QUE FOR REINICIADO A VPS, REPITA OS MESMOS PASSOS! "$fim
      sleep 2
      echo -e $bra"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      ;;
    15)
      echo -e $bra"=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="$fim
      
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
      echo -e $verm"OPÇÃO INVÁLIDA!!!"$fim
      sleep 4
  esac
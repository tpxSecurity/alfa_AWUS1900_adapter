#!/bin/bash
# Modo monitor automatizado
# put this command bashrc:
# alias mon0='./path/to/mon0.sh'


#  Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Default
DefaultColor='\e[39m'   # Default foreground color

echo ""

echo  -e "\e[31m   ▓  ▓    ▓  ▓"
echo  -e "\e[31m   ▓  ▒    ▒  ▓"
echo  -e "\e[31m   ▓  ░    ░  ▓ \033[33;5;7m alfa awus1900 -Mode Monitor  \033[0m"
echo  -e "\e[31m   ▒  █▄▄▄▄█  ▒ \033[33;5;7m     pwn pwn pwn pwn !!   \033[0m"
echo  -e "\e[31m   ░==█░░░░█==░ \033[33;5;7m       By @Bucio   \033[0m"
echo  -e "\e[31m      █▄▄▄▄█"

usuario=`whoami`
if [ "$usuario" != "root" ]
  then
      echo -e "${White} [${Red}!!${White}] Necesitas ser root para poder correr este script   ${White}"
      echo -e " :'( "
  else


  	case $1 in

  		down)
		echo ""
		ifconfig wlan0 down
		iwconfig wlan0 mode managed 
		ifconfig wlan0 up
		echo -e "${White}  [${Green}!!${White}] Modo managed Listo.  ${White}"
		echo ""
		iwconfig wlan0
		sleep 3
		;;

		start)
		echo ""
		ifconfig wlan0 down
		iwconfig wlan0 mode monitor
		ifconfig wlan0 up
		echo -e "${White}  [${Green}!!${White}] Modo Monitor Listo.  ${White}"
		echo ""
		iwconfig wlan0
		sleep 3
		;;

		*)
				echo -e "${White}  [${Red}!!${White}] Ejemplo de uso  ${White}"
				echo -e "${White}  [${BGreen} > ${White}] m0n0 start ${White}  > Iniciar modo monitor "
				echo -e "${White}  [${BGreen} > ${White}] m0n0 down ${White} > Para regresar a modo managed "

		;;
	esac


fi

#!/bin/bash

##################################
# Alfa AWUS1900 install
# script for wiresless pentester
# Rafael @Bucio   & Gearcapitan
# tpx Security
#     https://tpx.mx
#################################


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


clear;

echo ""
function load()
   {
        clear;
        echo -ne '\n'
        echo -ne 'tpx Labs - \r'
        sleep .7
        echo -ne 'tPx Labs | \r'
        sleep .5
        echo -ne 'tpX Labs / \r'
        sleep .8
        echo -ne 'Tpx Labs - \r'
        sleep .6
        echo -ne 'tPx Labs | \r'
        sleep .4
        echo -ne 'tpX Labs - \r'
        sleep .4
        echo -ne 'tpx Labs \ \r'
        sleep .3
        echo -ne 'tpx LaBs | \r'
        sleep 1
        echo -ne 'tpx Labs [ok] \r'
   }





load

clear;

echo ""
echo ""
echo  -e "\e[31m    ▄▄▄       ██▓      █████▒▄▄▄"  
echo  -e "\e[31m    ▒████▄    ▓██▒    ▓██   ▒▒████▄"  
echo  -e "\e[31m    ▒██  ▀█▄  ▒██░    ▒████ ░▒██  ▀█▄  \033[33;5;7m RTL8812AU/21AU & RTL8814AU drivers \033[0m"
echo  -e "\e[31m    ░██▄▄▄▄██ ▒██░    ░▓█▒  ░░██▄▄▄▄██ \033[33;5;7m Por Rafael @Bucio  & GearCapitan \033[0m "
echo  -e "\e[31m     ▓█   ▓██▒░██████▒░▒█░    ▓█   ▓██▒\033[33;5;7m tpx Security - https://tpx.mx \033[0m"
echo  -e "\e[31m     ▒▒   ▓▒█░░ ▒░▓  ░ ▒ ░    ▒▒   ▓▒█░\033[33;5;7m from Mexico with love  ❤  \033[0m"
echo  -e "\e[31m      ▒   ▒▒ ░░ ░ ▒  ░ ░       ▒   ▒▒ ░"
echo  -e "\e[31m      ░   ▒     ░ ░    ░ ░     ░   ▒   "
echo  -e "\e[31m          ░  ░    ░  ░             ░  ░"
echo -e "\e[0m"

echo ""
usuario=`whoami`
if [ "$usuario" != "root" ]
  then
    echo -e "$Yellow     +${White} - - - - - - -- - ---,....____ ${Yellow}_"
    echo -e "${White}     | [${Red}!${White}] Necesitas ser root para poder correr este script   ${White}|"
    echo -e "${Yellow}     $Yellow     +${White} - - - - - - -- - ---,....____ ${Yellow}"
    echo -e "${White}     | ${Red}                 \$${White}=> sudo ${Yellow}./${Green}alfa${White}_${Green}AWUS1900${White}_adapter.${Green}sh${White} "
    echo -e "${White}     | ${Red}                 \$${White}=> sudo ${Blue}bash ${Green}alfa${White}_${Green}AWUS1900${White}_adapter.${Green}sh${White} "
    echo -e "$Yellow     +${White} - - - - - - -- - ---,....____ ${Yellow}_"
    echo ""
    echo ""
else
sleep 1
echo ""
echo -e "$Red     +${White}-------------------------------------------------------------------${Red}+"
echo -e "$Red     +${White}-------------------------------------------------------------------${Red}+"
echo -e "$White +   ${Red} [${Cyan} 1. ${Red}]$White Actualizar Kali e Instalar dependencias "
echo -e "$White +   ${Red} [${Cyan} 2. ${Red}]$White Instalar Driver. "
echo -e "$White +   ${Red} [${Cyan} 3. ${Red}]$White Ayuda. "
echo -e "$White +   ${Red} [${Cyan} 4. ${Red}]$White Salir. "
echo -e "$Red     +${White}-------------------------------------------------------------------${Red}+"
echo -e "$Red     +${White}-------------------------------------------------------------------${Red}+"
echo ""
echo -e -n "$White    ${Red} [${Cyan}+ ${Red}]$White Que $BRed opcion $White deseas : "
read menu
menu=`expr $menu + 0 2> /dev/null`
case $menu in
      "1")

            echo -e "${White}  [${Red}++${White}] Para correr instalar los driver es necesario estar actualizado   ${White}"
            sleep 1
            echo -e "${White}  [${Green}!!${White}] Esto puede tomar unos minutos.. Depende de tu conexión de intenet  ${White}"
            sleep 1
            apt-get install build-essential;
            echo -e "${White}  [${Green}!!${White}] Instalado [1/2]   ${White}"
            sleep 1
            apt-get install linux-headers-`uname -r`;
            echo -e "${White}  [${Green}!!${White}] Instalado [2/2]   ${White}"
            sleep 1
            echo -e "${White}  [${Green}!!${White}] Comienza el update   ${White}"
            apt update && apt upgrade -f -y && apt full-upgrade  -f -y && apt autoremove -y -f 
            echo -e "${White}  [${Green}!!${White}] Estas Actualizado   ${White}"
            echo -e "${White}  [${Green}!!${Yellow}] Recuerda que debes reiniciar para que tome efecto el cambio de kernel   ${White}"
            sleep 3

      ;;
      "2")
            sleep 1
            echo -e "${White}  [${Red}++${White}] Descargando driver rtl8812au ......   ${White}"
            echo -e "${White}  [${Green}!!${White}] Esto puede tomar un par de segundos o minutos depende de tu red..   ${White}"
            git clone -b v4.3.21 https://github.com/aircrack-ng/rtl8812au.git;
            echo -e "${White}  [${Green}!!${White}] Descarga completa.  ${White}"
            sleep 1
            echo -e "${White}  [${Red}++${White}] Instalando ...... Esto puede tomar unos minutos :)  ${White}"
            cd rtl8812au/;make RTL8814=1
            echo -e "${White}  [${Green}!!${White}] Make Listo !  ${White}"
            sleep 1;
            cp 8814au.ko /lib/modules/`uname -r`;
            echo -e "${White}  [${Green}!!${White}] Modulo copiado  ${White}"
            depmod -a;
            echo -e "${White}  [${Green}!!${White}] Dependencias comprobadas  ${White}"
            make install RTL8814=1;
            echo -e "${White}  [${Green}OK${White}] Instalación completa  ${White}"
            echo -e "${White}  [${Green}!!${White}] Prueba tu  antena modo monitor ${White}"
            sleep 2



       ;;
      "3")
          
                      echo -e "${White}  [${Red}++${White}]  Links de ayuda:   ${White}"
                      echo -e "${White}  [${Green}!!${White}] https://github.com/aircrack-ng/rtl8812au/tree/v4.3.21  ${BCyan} Github aircrack-ng"
                      echo -e "${White}  [${Green}!!${White}] https://foro.tpx.mx ${BCyan} Foro de ayuda"
          
       ;;
      "4")
                  echo ""
                  echo -e "$White[${Green} exit ${White}]$Green tpx $White Security $BYellow c[||] "
                  echo ""
            exit
            ;;
        *)
         echo ""
         echo -e "$White     [${Red}!${White}]$Red Opcion ${White} No valida."
         echo ""
         ;;
esac
echo ""
echo " EOF !"

fi

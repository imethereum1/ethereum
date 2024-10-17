#!/bin/bash
CYAN='\e[0;36m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[1;33m'
BLUE='\e[0;34m'
NC='\e[0m' # কোন রং না (normal color)

clear
echo -e "${CYAN}"
sleep 0.5
echo -n "N"; sleep 0.5
echo -n "O"; sleep 0.5
echo -n "T"; sleep 0.5
echo -n "H"; sleep 0.5
echo -n "I"; sleep 0.5
echo -n "N"; sleep 0.5
echo -n "G"; sleep 0.5
sleep 1
echo -e "\n  ____  _____ _______ _   _ "
sleep 0.6
echo " / ___|| ____|__   __| | | |"
sleep 0.6
echo " \___ \|  _|    | |  | |_| |"
sleep 0.6
echo "  ___) | |___   | |  |  _  |"
sleep 0.6
echo " |____/|_____|  |_|  |_| |_|"
echo -e "${NC}"
echo ""
echo -e "${RED}WELCOME MR.ETHEREUM${NC}"
echo -e "${BLUE}YOU ARE MY BOOS AND MY MASTER${NC}"
echo ""
correct_password="AVNEET"
echo -e "${CYAN}Please enter the password to proceed:${NC}"
read -sp "ENTER PASSWORD: " user_password
echo
sleep 0.5
if [ "$user_password" != "$correct_password" ]; then
    echo -e "${RED}Incorrect password. Access Denied!${NC}"
    exit 1
else
    echo -e "${GREEN}Access Granted!${NC}"
fi
clear
echo -e "${CYAN}"
sleep 0.5
echo -e "${BLUE}MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM${NC}"
echo -e "${BLUE}MMMMMMMMMMM                MMMMMMMMMM${NC}"
echo -e "${BLUE}MMMN\$                           vMMMM${NC}"
echo -e "${BLUE}MMMNl  MMMMM             MMMMM  JMMMM${NC}"
echo -e "${BLUE}MMMNl  MMMMMMMN       NMMMMMMM  JMMMM${NC}"
echo -e "${BLUE}MMMNl  MMMMMMMMMNmmmNMMMMMMMMM  JMMMM${NC}"
echo -e "${BLUE}MMMNI  MMMMMMMMMMMMMMMMMMMMMMM  jMMMM${NC}"
echo -e "${BLUE}MMMNI  MMMMMMMMMMMMMMMMMMMMMMM  jMMMM${NC}"
echo -e "${BLUE}MMMNI  MMMMM   MMMMMMM   MMMMM  jMMMM${NC}"
echo -e "${BLUE}MMMNI  MMMMM   MMMMMMM   MMMMM  jMMMM${NC}"
echo -e "${BLUE}MMMNI  MMMNM   MMMMMMM   MMMMM  jMMMM${NC}"
echo -e "${BLUE}MMMNI  WMMMM   MMMMMMM   MMMM#  JMMMM${NC}"
echo -e "${BLUE}MMMMR  ?MMNM             MMMMM .dMMMM${NC}"
echo -e "${BLUE}MMMMNm \`?MMM             MMMM\` dMMMMM${NC}"
echo -e "${BLUE}MMMMMMN  ?MM             MM?  NMMMMMN${NC}"
echo -e "${BLUE}MMMMMMMMNe                 JMMMMMNMMM${NC}"
echo -e "${BLUE}MMMMMMMMMMNm,            eMMMMMNMMNMM${NC}"
echo -e "${BLUE}MMMMNNMNMMMMMNx        MMMMMMNMMNMMNM${NC}"
echo -e "${BLUE}MMMMMMMMNMMNMMMMm+..+MMNMMNMNMMNMMNMM${NC}"
echo -e "${GREEN}Metasploit Framework - An open-source penetration testing platform.${NC}"
echo ""
echo ""
echo "[1]ATTACK WEBSITE=[DDOS]"
echo "[2]FIND IP,SCAN PORT"
echo "[3]HACKINH ANIMATION"
echo "[4]MY IP"
echo "[5]SIMPLE WEB DATA FINDER"
echo "[6]HASTAG TYPE FINDER"
echo "[7]RUN METASPLOIT"
echo "[8]INJECT PAYLOAD USING MSFVANOM"
echo "[9]SEND ME MONEY!AND LEARN HACKING"
echo "[10]UPDATE YOU!"
read -p "$(echo -e ${CYAN}SELLECT YOUR OPTION:${NC})" opt
if [ $opt -eq 1 ];then
    clear
    cd ~/ethereum
    python3 ethddos.py
elif [ $opt -eq 2 ];then
    clear
    cd ~/ethereum
    python ip port.py
elif [ $opt -eq 3 ];then
    clear
    cd ~/ethereum
    python animation.py
elif [ $opt -eq 4 ];then
    clear
    ifconfig
elif [ $opt == 5 ];then
    clear
    cd ~/ethereum
    python data.py
elif [ $opt -eq 6 ];then
    clear
    cd ~/ethereum
    python hash.py
elif [ $opt -eq 7 ];then
    clear
    msfconsole
elif [ $opt -eq 8 ];then
    cd ~/ethereum
    bash Inject_Payload.sh
elif [ $opt -eq 9 ];then
	clear
	echo "${RED}IF YOU SEND ME MONEY! CINTACT ME IN TELEGRAM @ImMrEthereum${NC}"
elif [ $opt -eq 10 ];then
	clear
	apt update
	yes | apt upgrade
	pkg update
	yes | pkg upgrade
	pkg install git 
	pkg install python 
	pkg install python2
	pkh install python3
	pkg install php
	pkg install wget
	pkg install curl
	pip2 install mechanize
	pip2 install requests
	pip2 install bs4
	pip install requests
	pip install mechanize 
	pip install bs4
	clear
	cd ~/ethereum
	./avneet_main.sh
else
    echo "wrong option"
fi
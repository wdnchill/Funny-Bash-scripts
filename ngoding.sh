#!/bin/bash

# ANSI escape codes for text formatting
BOLD=$(tput bold)
UNDERLINE=$(tput smul)
BLINK=$(tput blink)
REVERSE=$(tput rev)
NORMAL=$(tput sgr0)

# ANSI escape codes for text colors
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)

# Print pesan selamat datang

echo "${BOLD}${GREEN}
⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣶⡋⠉⠙⠒⢤⡀⠀⠀⠀⠀⠀⢠⠖⠉⠉⠙⠢⡄⠀
⠀⠀⠀⠀⠀⠀⢀⣼⣟⡒⠒⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀⠹⡄
⠀⠀⠀⠀⠀⠀⣼⠷⠖⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⢷
⠀⠀⠀⠀⠀⠀⣷⡒⠀⠀⢐⣒⣒⡒⠀⣐⣒⣒⣧⠀⠀⡇⠀⢠⢤⢠⡠⠀⠀⢸
⠀⠀⠀⠀⠀⢰⣛⣟⣂⠀⠘⠤⠬⠃⠰⠑⠥⠊⣿⠀⢴⠃⠀⠘⠚⠘⠑⠐⠀⢸
⠀⠀⠀⠀⠀⢸⣿⡿⠤⠀⠀⠀⠀⠀⢀⡆⠀⠀⣿⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⣸
⠀⠀⠀⠀⠀⠈⠿⣯⡭⠀⠀⠀⠀⢀⣀⠀⠀⠀⡟⠀⠀⢸⠀⠀⠀⠀⠀⠀⢠⠏
⠀⠀⠀⠀⠀⠀⠀⠈⢯⡥⠄⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⠳⢄⣀⣀⣀⡴⠃⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⡦⣄⣀⣀⣀⣠⠞⠁⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⠛⠃⠀⠀⠀⢹⠳⡶⣤⡤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣠⢴⣿⣿⣿⡟⡷⢄⣀⣀⣀⡼⠳⡹⣿⣷⠞⣳⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢰⡯⠭⠹⡟⠿⠧⠷⣄⣀⣟⠛⣦⠔⠋⠛⠛⠋⠙⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣿⠭⠉⠀⢠⣤⠀⠀⠀⠘⡷⣵⢻⠀⠀⠀⠀⣼⠀⣇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⡇⣿⠍⠁⠀⢸⣗⠂⠀⠀⠀⣧⣿⣼⠀⠀⠀⠀⣯⠀⢸⠀⠀⠀⠀⠀⠀⠀
"
echo "${BOLD}${GREEN}[+]Hai ${MAGENTA}$(whoami)"
echo "${BOLD}${GREEN}[+]Tanggal: ${MAGENTA}$(date)"
echo "${BOLD}${GREEN}[+]Lokasi: ${MAGENTA}$(pwd)"
# Fungsi untuk membuka browser Firefox
open_firefox() {
    echo "${BOLD}${GREEN}Buka browser Firefox${NORMAL}"
    firefox &
}

# Fungsi untuk membuka Visual Studio Code
open_vscode() {
    echo "${BOLD}${BLUE}Buka Visual Studio Code${NORMAL}"
    code &
}


# Fungsi untuk membuka tab baru pada terminal GNOME
open_terminal_tab() {
    echo "${BOLD}${MAGENTA}Buka Tab Baru pada Terminal GNOME${NORMAL}"
    gnome-terminal --tab &
}

# Fungsi untuk membuka XAMPP Control Panel
#samakan versi XAMPP yang anda install 
open_xampp() {
    echo "${BOLD}${CYAN}Buka XAMPP${NORMAL}"
    sudo /opt/lampp/manager-linux-x64.run &
}

# Fungsi untuk membuka GitHub
open_github() {
    echo "${BOLD}${CYAN}Buka GitHub${NORMAL}"
    firefox "https://github.com" &
}

# Fungsi untuk membuka Figma
open_figma() {
    echo "${BOLD}${CYAN}Buka Figma${NORMAL}"
    firefox "https://www.figma.com" &
}

# Fungsi untuk membuka WhatsApp
open_whatsapp() {
    echo "${BOLD}${GREEN}Buka WhatsApp${NORMAL}"
    firefox "https://web.whatsapp.com" &
}

# Main program
echo "${REVERSE}${BOLD}[+]Menu:${NORMAL}"
echo "1. ${UNDERLINE}${YELLOW}[+]browser Firefox${BOLD}"
echo "2. ${UNDERLINE}${MAGENTA}[+]Visual Studio Code${BOLD}"
echo "3. ${UNDERLINE}${CYAN}[+]Terminal GNOME${BOLD}"
echo "4. ${UNDERLINE}${YELLOW}[+]XAMPP Control Panel${BOLD}"
echo "5. ${UNDERLINE}${MAGENTA}[+]GitHub${BOLD}"
echo "6. ${UNDERLINE}${CYAN}[+]Figma${BOLD}"
echo "7. ${UNDERLINE}${GREEN}[+]WhatsApp${BOLD}"

read -p "${BOLD}[+]Pilih menu: ${NORMAL}" choice

case $choice in
    1)
        open_firefox
        ;;
    2)
        open_vscode
        ;;
    3)
        open_terminal_tab
        ;;
    4)
        open_xampp
        ;;
    5)
        open_github
        ;;
    6)
        open_figma
        ;;
    7)
        open_whatsapp
        ;;
    *)
        echo "${BOLD}${RED}[-]Pilihan tidak valid${NORMAL}"
        ;;



esac

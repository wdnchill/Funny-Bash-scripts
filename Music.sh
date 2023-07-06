#!/bin/bash

nama=$(whoami)


# Warna teks
BOLD="\e[1m"
UNDERLINE="\e[4m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
MAGENTA="\e[95m"
CYAN="\e[96m"
RED="\e[91m"
RESET="\e[0m"

echo -e "${CYAN}Halo, apa kabar ${BOLD}${nama}${RESET}${CYAN}?"
sleep 1

read -p "Apakah mau aku putarkan musik? (ya/tidak): " input

if [ "$input" == "ya" ]; then 
  # Memutar lagu
  echo -e "${GREEN}${BOLD}Memutar lagu:${RESET}"
  rhythmbox-client --play
else
  echo -e "${YELLOW}Oke, semoga harimu indah. Bye!${RESET}"
  exit 0
fi

sleep 1

# Menampilkan opsi kepada pengguna
echo -e "${MAGENTA}${UNDERLINE}Menu lagu:${RESET}"
echo -e "${BLUE}1. Play"
echo -e "${BLUE}2. Next lagu"
echo -e "${BLUE}3. Previous lagu"
echo -e "${BLUE}4. Stop lagu"
echo -e "${BLUE}5. Pause lagu"
echo -e "${BLUE}6. Keluar"

while true; do
  # Membaca input dari pengguna
  read -p "Masukkan nomor opsi: " choice

  # Memeriksa pilihan yang dimasukkan oleh pengguna
  case $choice in
    1)
      echo -e "${GREEN}${BOLD}Memutar lagu:${RESET}"
      rhythmbox-client --play
      ;;
    2)
      echo -e "${RED}${BOLD}Putar lagu berikutnya${RESET}"
      rhythmbox-client --next
      ;;
    3)
      echo -e "${RED}${BOLD}Putar lagu sebelumnya${RESET}"
      rhythmbox-client --previous
      ;;
    4)
      echo -e "${RED}${BOLD}Stop lagu${RESET}"
      rhythmbox-client --stop
      ;;
    5)
      echo -e "${RED}${BOLD}Pause lagu${RESET}"
      rhythmbox-client --pause
      ;;
    6)
      echo -e "${YELLOW}Terima kasih! Selamat tinggal.${RESET}"
      break
      ;;
    *)
      echo -e "${YELLOW}Pilihan tidak valid.${RESET}"
      ;;
  esac
done

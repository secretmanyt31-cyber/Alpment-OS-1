#!/usr/bin/env bash
# =====================================================================
# Alpment OS 1 - Gelişmiş Terminal Karşılama ve Sistem Bilgisi Betiği
# =====================================================================

# Renk Tanımlamaları (Neon Mavi ve Turkuaz Teması)
BLUE='\033[0;36m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

clear

# --- Windows 12 / Alpment OS Stilinde ASCII Logosu ---
echo -e "${CYAN}    A L P M E N T   O S   1   [Windows 12 Fan Edition]${RESET}"
echo -e "${BLUE}         /\          ${WHITE} Sistem Durumu: ${RESET}Aktif & Kararlı"
echo -e "${BLUE}        /  \         ${WHITE} Çekirdek:      ${RESET}\$(uname -r)"
echo -e "${BLUE}       /\  /\        ${WHITE} Masaüstü:      ${RESET}KDE Plasma (Glass Mode)"
echo -e "${CYAN}      /  \/  \       ${WHITE} Paket Tipi:    ${RESET}Arch / Flatpak"
echo -e "${CYAN}     /________\      ${WHITE} Geliştirici:   ${RESET}secretmantyt31-cyber"
echo -e "${RESET}"
echo -e "${CYAN}------------------------------------------------------------${RESET}"

# --- Dinamik Sistem Bilgileri (Hızlı Kaynak Takibi) ---
# RAM Kullanımı Hesaplama
RAM_USAGE=$(free -m | awk '/Mem:/ {print $3 "/" $2 " MB"}')
# Disk Durumu Hesaplama
DISK_USAGE=$(df -h / | awk '/\// {print $3 "/" $2 " (" $5 ")"}')

echo -e "${WHITE}[+] Bellek Kullanımı:${RESET} $RAM_USAGE"
echo -e "${WHITE}[+] Disk Alanı:      ${RESET} $DISK_USAGE"
echo -e "${WHITE}[+] Aktif Kullanıcı: ${RESET} \$USER"
echo -e "${CYAN}------------------------------------------------------------${RESET}"
echo -e "${WHITE}Alpment Terminaline Hoş Geldiniz. Kodlamaya başlamaya hazır!${RESET}"
echo ""

#!/usr/bin/env bash
# =====================================================================
# Alpment OS 1 - OOBE Kurulum ve Yapılandırma Motoru
# =====================================================================

# Hata oluşursa betiği durdur (Güvenli kurulum için)
set -e

echo "========================================="
echo "   Alpment OS 1 - OOBE Kurulum Motoru     "
echo "========================================="

# --- 1. Yapılandırma Dosyalarını Kontrol Et
CONFIG_FILE="/src/alpment-oobe/language-selection.conf"
if [ -f "$CONFIG_FILE" ]; then
    echo "[OK] Dil yapılandırma dosyası bulundu."
    # Varsayılan dili dosyadan oku (Yoksa tr_TR yap)
    DEFAULT_LANG=$(grep -i "DefaultLanguage" "$CONFIG_FILE" | cut -d'=' -f2) || DEFAULT_LANG="tr_TR.UTF-8"
else
    echo "[WARN] Yapılandırma bulunamadı, varsayılan Türkçe ayarlanıyor."
    DEFAULT_LANG="tr_TR.UTF-8"
fi

# --- 2. Sistem Dil ve Bölge Ayarlarını Uygula
echo "[INFO] Sistem dili ayarlanıyor: $DEFAULT_LANG"
echo "LANG=$DEFAULT_LANG" > /etc/locale.conf
export LANG=$DEFAULT_LANG

# --- 3. Donanım ve Ağ Bağlantılarını Kontrol Et
echo "[INFO] Ağ servisleri optimize ediliyor..."
systemctl enable --now NetworkManager

# --- 4. Grafik Arayüzünü ve Temayı Tetikle
echo "[INFO] Alpment-Glass-OOBE Grafik Ekranı Başlatılıyor..."
# İleride yazacağımız Python UI ekranını çağırır
if [ -f "/src/alpment-oobe/oobe-ui.py" ]; then
    python3 /src/alpment-oobe/oobe-ui.py
else
    echo "[ERROR] OOBE Grafik arayüz dosyası (oobe-ui.py) bulunamadı!"
    exit 1
fi

echo "[SUCCESS] Alpment OS 1 OOBE başarıyla tamamlandı. Masaüstüne aktarılıyorsunuz..."

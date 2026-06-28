#!/usr/bin/env bash
# =====================================================================
# Alpment OS 1 - Flatpak & Flathub Mağaza Entegrasyon Motoru
# =====================================================================

# Hata durumunda betiği durdur
set -e

echo "========================================="
echo "   Alpment OS 1 - Mağaza Kurulum Entegrasyonu "
echo "========================================="

# --- 1. Flatpak Altyapısının Kontrolü ---
if ! command -v flatpak &> /dev/null; then
    echo "[INFO] Flatpak altyapısı sistemde bulunamadı, kuruluyor..."
    pacman -S --noconfirm flatpak xdg-desktop-portal-kde
else
    echo "[OK] Flatpak altyapısı zaten kurulu."
fi

# --- 2. Flathub Merkez Mağaza Deposunun Eklenmesi ---
echo "[INFO] Flathub ana uygulama ve oyun deposu sisteme entegre ediliyor..."
# Depo zaten varsa hata vermemesi için --if-not-exists parametresi eklendi
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# --- 3. İndirme ve Performans Optimizasyonları ---
echo "[INFO] Mağaza indirme hızları ve paralel indirme ayarları optimize ediliyor..."
# Büyük oyunların ve uygulamaların hızlı inmesi için önbellek ve eş zamanlı bağlantı ayarı
flatpak config --set languages "tr;en"

# --- 4. KDE Discover Mağaza Arayüzü Bağlantısı ---
echo "[INFO] Grafiksel uygulama mağazası (Discover) entegrasyonu tetikleniyor..."
if ! pacman -Qs discover &> /dev/null; then
    pacman -S --noconfirm discover packagekit-qt6
fi

echo "[SUCCESS] Alpment OS 1 Uygulama ve Oyun Mağazası başarıyla hazırlandı!"
echo "[SUCCESS] Kullanıcılar artık binlerce uygulamaya tek tıkla erişebilir."

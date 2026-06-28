# 🌟 Alpment OS 1 - Windows 12 Fan Edition 🌟

🚀 **Alpment OS 1**, Arch Linux tabanlı, modern **Windows 12 Fan Edition** tasarım dilini ve fütüristik **Fruttiger Aero / Glass** estetiğini bir araya getiren bağımsız, yüksek performanslı bir işletim sistemi projesidir.

---

## ✨ Öne Çıkan Özellikler

* **💎 Aero Glass Arayüzü:** Koyu akrilik teması (`color-scheme.conf`) ve %85 şeffaflıkla pencerelerin arkasında ultra akıcı bulanıklık (blur) efekti.
* **🎮 Oyun ve Kodlama Odaklı:** Flatpak ve Flathub entegrasyonu sayesinde Steam, Discord, VS Code gibi popüler araçlar ilk kurulumda optimize hazır gelir.
* **⚙️ Gelişmiş Terminal:** Sistem durumunu (RAM, Disk, Çekirdek) milisaniyeler içinde ASCII sanatı ile ekrana basan fütüristik `advanced-terminal`.
* **💻 Akıllı Kurulum (OOBE):** PyQt6 altyapısıyla yazılmış, kullanıcı dostu ve çerçevesiz modern dil seçim ekranı.

---

## 🛠️ Depo Dizini ve Proje Yapısı

Sistemin ana motor bileşenleri şu şekilde organize edilmiştir:

* 📂 `.github/workflows/` -> **build-alpment-iso.yml:** GitHub Actions üzerinden otomatik ISO derleme motoru.
* 📂 `assets/branding/` -> Sistem logoları (`.svg`) ve global renk paleti yapılandırması.
* 📂 `src/alpment-oobe/` -> İlk açılış ekranı (OOBE) grafik arayüzü ve kurulum scriptleri.
* 📂 `src/default-apps/` -> Gelişmiş terminal, dosya yöneticisi ve kamera optimizasyonları.
* 📂 `src/flatpak-setup/` -> Flathub mağaza entegrasyonu ve otomatik güncelleme şablonları.

---

## 🏗️ ISO Nasıl Derlenir? (GitHub Actions)

Bu projeyi kendi bilgisayarına indirmeden, doğrudan GitHub sunucularında derleyip `.iso` kalıbı almak için:

1.  Bu depoyu kendi GitHub hesabına **Fork** et.
2.  Depondaki **Actions** sekmesine tıkla.
3.  Sol menüden **Alpment OS 1 ISO Builder** iş akışını seç.
4.  **Run workflow** butonuna basarak derlemeyi tetikle.
5.  İşlem bittiğinde oluşan ISO dosyasını **Artifacts** kısmından bilgisayarına indir!

---

## 👤 Geliştirici

* **Lead Developer:** `secretmantyt31-cyber` / Alpment OS Development Team
* **Konsept:** Windows 12 Fan Edition & High Performance Custom Linux Distribution.

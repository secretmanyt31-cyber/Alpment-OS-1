#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# =====================================================================
# Alpment OS 1 - OOBE Grafik Arayüz Motoru (Windows 12 Fan Edition)
# =====================================================================

import sys
import os
from PyQt6.QtWidgets import QApplication, QWidget, QVBoxLayout, QHBoxLayout, QLabel, QComboBox, QPushButton
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont, QPalette, QColor

class AlpmentOOBE(QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()

    def init_ui(self):
        # Pencere Başlığı ve Boyutları
        self.setWindowTitle("Alpment OS 1 - Kurulum Sihirbazı")
        self.resize(800, 550)
        self.setWindowFlags(Qt.WindowType.FramelessWindowHint) # Windows 12 gibi sade, kenraksız pencere
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground) # Cam efekti altyapısı

        # Ana Düzenleyici (Dikey Hizalama)
        main_layout = QVBoxLayout()
        main_layout.setAlignment(Qt.AlignmentFlag.AlignCenter)
        main_layout.setContentsMargins(50, 50, 50, 50)

        # Başlık Yazısı (Fütüristik ve Kalın)
        title_label = QLabel("Alpment OS 1'e Hoş Geldiniz")
        title_font = QFont("Segoe UI", 28, QFont.Weight.Bold)
        title_label.setFont(title_font)
        title_label.setStyleSheet("color: #ffffff; margin-bottom: 10px;")
        title_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        main_layout.addWidget(title_label)

        # Alt Başlık
        subtitle_label = QLabel("Lütfen bir dil seçerek kuruluma devam edin.")
        subtitle_font = QFont("Segoe UI", 12)
        subtitle_label.setFont(subtitle_font)
        subtitle_label.setStyleSheet("color: #a0a8b4; margin-bottom: 40px;")
        subtitle_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        main_layout.addWidget(subtitle_label)

        # Dil Seçim Kutusu (ComboBox)
        self.lang_box = QComboBox()
        self.lang_box.addItems(["Türkçe (Türkiye)", "English (US)", "Deutsch (Deutschland)", "Français (France)"])
        self.lang_box.setFixedWidth(320)
        self.lang_box.setStyleSheet("""
            QComboBox {
                border: 2px solid #00c6ff;
                border-radius: 8px;
                padding: 10px;
                background-color: rgba(30, 34, 42, 0.85);
                color: #ffffff;
                font-size: 14px;
            }
            QComboBox::drop-down { border: none; }
        """)
        main_layout.addWidget(self.lang_box, alignment=Qt.AlignmentFlag.AlignCenter)

        # Alt Buton Alanı (Yatay Hizalama)
        btn_layout = QHBoxLayout()
        btn_layout.setContentsMargins(0, 40, 0, 0)
        
        # İlerle Butonu (Parlayan Neon Mavi)
        next_btn = QPushButton("İlerle ve Kur")
        next_btn.setFixedWidth(180)
        next_btn.setCursor(Qt.CursorShape.PointingHandCursor)
        next_btn.setStyleSheet("""
            QPushButton {
                background: qlineargradient(x1:0, y1:0, x2:1, y2:1, stop:0 #00c6ff, stop:1 #0072ff);
                color: white;
                font-family: 'Segoe UI';
                font-size: 14px;
                font-weight: bold;
                border: none;
                border-radius: 8px;
                padding: 12px;
            }
            QPushButton:hover {
                background: qlineargradient(x1:0, y1:0, x2:1, y2:1, stop:0 #00f2fe, stop:1 #4facfe);
            }
        """)
        next_btn.clicked.connect(self.start_installation)
        btn_layout.addWidget(next_btn, alignment=Qt.AlignmentFlag.AlignCenter)
        main_layout.addLayout(btn_layout)

        # Stil Şablonu (Pencerenin Arkasındaki Koyu Cam Efekti Kontenjanı)
        self.setStyleSheet("""
            AlpmentOOBE {
                background-color: rgba(24, 28, 36, 0.90);
                border: 1px solid rgba(255, 255, 255, 0.15);
                border-radius: 16px;
            }
        """)
        self.setLayout(main_layout)

    def start_installation(self):
        print(f"[INFO] Seçilen dil ile kuruluma başlanıyor: {self.lang_box.currentText()}")
        sys.exit(0) # Kurulum tamamlandı uyarısı verip arayüzü kapatır

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = AlpmentOOBE()
    window.show()
    sys.exit(app.exec())

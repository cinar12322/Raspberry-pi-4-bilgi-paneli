#!/bin/bash

clear
echo "[ℹ️] Gerekli Python kütüphaneleri yükleniyor..."

# Gerekli kütüphaneler listesi
packages=(
    "rich"
    "requests"
    "psutil"
)

# Paketleri sırayla yükle
for pkg in "${packages[@]}"
do
    echo "  > $pkg yükleniyor..."
    pip3 install --user $pkg
done

echo "[✅] Kütüphaneler yüklendi."

echo "[🚀] Bilgi paneli başlatılıyor..."
python3 bilgipaneli.cpython-311.pyc

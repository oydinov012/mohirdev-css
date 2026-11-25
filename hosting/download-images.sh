#!/bin/bash
# Rasmlarni yuklab olib, index.html ni lokal yo'llarga o'tkazadi.
# Ishlatish: bash download-images.sh
B="https://www.elegantthemes.com/layouts/wp-content/uploads/2018/08"
mkdir -p img
for f in $(grep -o '1X_Hosting_[A-Za-z0-9_-]*\.png' index.html | sort -u); do
  curl -sL "$B/$f" -o "img/$f"
done
sed -i "s#$B/#img/#g" index.html
echo "Tayyor: rasmlar img/ papkasiga yuklandi."

#!/bin/bash

# توقف سرویس‌ها
service hiddify-xray stop
service hiddify-haproxy stop

# پاک کردن محتوای پوشه bin
rm -rf /opt/hiddify-manager/xray/bin/*

# دانلود و استخراج فایل زیپ
wget https://github.com/GFW-knocker/Xray-core/releases/download/v1.8.23-mahsa-r3/Xray-freebsd-arm64-v8a.zip -O xray.zip
unzip xray.zip -d /opt/hiddify-manager/xray/bin/
rm xray.zip

# دادن مجوز اجرایی به فایل xray
chmod +x /opt/hiddify-manager/xray/bin/xray

# اجرای اسکریپت restart.sh
/opt/hiddify-manager/restart.sh
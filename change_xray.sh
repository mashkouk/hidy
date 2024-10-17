service hiddify-xray stop
service hiddify-haproxy stop
rm -rf /opt/hiddify-manager/xray/bin/*
wget https://github.com/GFW-knocker/Xray-core/releases/download/v1.8.23-mahsa-r3/Xray-linux-arm64-v8a.zip -O xray.zip
unzip xray.zip -d /opt/hiddify-manager/xray/bin/
rm xray.zip
chmod +x /opt/hiddify-manager/xray/bin/xray
bash /opt/hiddify-manager/restart.sh
bash /opt/hiddify-manager/apply_configs.sh
sudo reboot

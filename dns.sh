#!/bin/bash

# نصب پکیج resolvconf
sudo apt install -y resolvconf

# ویرایش فایل resolv.conf.d/head
sudo tee -a /etc/resolvconf/resolv.conf.d/head << EOF
nameserver 8.8.4.4
nameserver 9.9.9.9
nameserver 1.1.1.1
#
EOF

# ریبوت کردن سیستم
sudo reboot
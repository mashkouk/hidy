#!/bin/bash
# آدرس فایل در GitHub
source_url="https://raw.githubusercontent.com/mashkouk/hidy/refs/heads/main/base_xray_config.json.j2"
# مسیر مقصد در سیستم
destination_dir="/opt/hiddify-manager/.venv/lib/python3.10/site-packages/hiddifypanel/panel/user/templates/"
# نام فایل مقصد
destination_file="base_xray_config.json.j2"
# ایجاد مسیر مقصد در صورت وجود نداشتن
mkdir -p "$destination_dir"
# دانلود فایل از GitHub و قرار دادن آن در مسیر مقصد
wget -O "$destination_dir/$destination_file" "$source_url"
# بررسی نتیجه دانلود
if [ $? -eq 0 ]; then
  echo "فایل با موفقیت دانلود و جایگزین شد."
else
  echo "خطا در دانلود فایل."
fi

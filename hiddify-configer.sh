#!/bin/bash

# آدرس مخزن GitHub
repo_url="https://raw.githubusercontent.com/mashkouk/hidy/refs/heads/main/"

# لیست اسکریپت‌ها
scripts=("fragment_and_tiktok.sh" "change_xray.sh" "dns.sh")

# ایجاد یک دایرکتوری موقت برای دانلود اسکریپت‌ها
temp_dir=$(mktemp -d)

# دانلود و اجرای هر اسکریپت
for script in "${scripts[@]}"; do
  wget -q "$repo_url$script" -O "$temp_dir/$script"
  sudo bash "$temp_dir/$script"
done

# حذف دایرکتوری موقت
rm -rf "$temp_dir"

# ریبوت کردن سیستم
sudo reboot
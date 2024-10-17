wget "https://raw.githubusercontent.com/mashkouk/hidy/refs/heads/main/base_xray_config.json.j2"
sudo cp base_xray_config.json.j2 /opt/hiddify-manager/.venv/lib/python3.10/site-packages/hiddifypanel/panel/user/templates/
cd /root
rm -rf base_xray_config.json.j2
wget "https://github.com/mashkouk/hidy/raw/refs/heads/main/user.py"
sudo cp user.py /opt/hiddify-manager/.venv/lib/python3.10/site-packages/hiddifypanel/models/
cd /root
rm -rf user.py
bash /opt/hiddify-manager/apply_configs.sh

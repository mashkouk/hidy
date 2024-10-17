wget https://raw.githubusercontent.com/mashkouk/hidy/refs/heads/main/base_xray_config.json.j2
sudo cp base_xray_config.json.j2 /opt/hiddify-manager/.venv/lib/python3.10/site-packages/hiddifypanel/panel/user/templates/
bash /opt/hiddify-manager/apply_configs.sh

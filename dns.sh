sudo apt install -y resolvconf
wget https://github.com/mashkouk/hidy/raw/refs/heads/main/head
sudo cp head /etc/resolvconf/resolv.conf.d/
sudo reboot

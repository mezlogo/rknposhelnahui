sudo systemctl restart systemd-timesyncd
sudo apt update && sudo apt install -y ntpdate
sudo ntpdate pool.ntp.org

sudo apt update && sudo apt install -y htpdate
sudo htpdate -s www.google.com
timedatectl status

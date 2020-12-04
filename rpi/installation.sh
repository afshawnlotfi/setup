# sudo nano /etc/default/keyboard
# wpa_passphrase "SSID" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null

sudo apt-get install apt-transport-https ca-certificates software-properties-common git -y
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker $USER
sudo curl https://download.docker.com/linux/raspbian/gpg
echo "deb https://download.docker.com/linux/raspbian/ stretch stable" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-get update -y
sudo apt-get upgrade -y
sudo systemctl start docker.service
sudo apt install python3 python3-pip -y
python3 -m pip install -IU docker-compose
sudo ln -s /home/pi/.local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
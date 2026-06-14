echo "Installing UFW..."
sudo apt install ufw -y

echo "Configuring rules..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw allow 22/tcp
sudo ufw deny 80/tcp

echo "Enabling firewall..."
sudo ufw --force enable

echo "Current Status"
sudo ufw status verbose


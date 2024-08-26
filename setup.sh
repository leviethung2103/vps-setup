#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install Python 3.10
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.10 python3.10-venv python3.10-dev

# Install pip for Python 3.10
curl -sS https://bootstrap.pypa.io/get-pip.py | sudo python3.10

# Verify Python installation
python3.10 --version
pip3.10 --version

# Set up a virtual environment (optional)
# python3.10 -m venv myenv
# source myenv/bin/activate

# Install necessary Python packages
pip3.10 install --upgrade pip

# Install Node.js and npm (for Next.js)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Verify Node.js and npm installation
node -v
npm -v

# Install Next.js globally
npm install -g next

# Install PM2 globally
npm install -g pm2

# Install Docker
# sudo apt install -y ca-certificates curl gnupg lsb-release
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt update
# sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# # Verify Docker installation
# sudo docker --version
# sudo docker-compose --version

# # Add current user to the Docker group (avoid needing sudo for Docker commands)
# sudo usermod -aG docker $USER

# Install Nginx
sudo apt install -y nginx

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Verify Nginx installation
nginx -v

# Create a new Next.js app (optional)
# npx create-next-app@latest my-next-app

echo "Setup is complete! Log out and back in to apply Docker group changes."

curl -sSL https://install.python-poetry.org | python3 -
poetry --version

npm install -g yarn


sudo apt-get install screen
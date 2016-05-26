echo "install nodejs"
sudo apt-get install nodejs -y > /dev/null

echo "install npm"
sudo apt-get install npm -y > /dev/null

echo "change command nodejs to node"
sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

echo "install nginx"
apt-get install nginx -y > /dev/null

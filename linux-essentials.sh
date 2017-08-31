sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoclean
sudo apt-get -y autoremove
sudo apt-get -y clean

echo "Instalar Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
rm google-chrome-stable_current_amd64.deb

echo "Instalar Spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

echo "Instalar Git"
sudo apt-get install -y git

echo "Instalar Node.js"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install node

echo "Instalar Django/VirtualEnv"
sudo apt install -y python-pip
sudo pip install --upgrade pip
sudo apt install -y virtualenv
sudo pip install django
sudo apt-get install -y python-dev python3-dev
sudo apt-get install -y libmysqlclient-dev 
sudo pip install setuptools
sudo pip install pymysql
sudo pip install mysqlclient

echo "Instalar fontes do Windows"
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

sudo shutdown -r 0

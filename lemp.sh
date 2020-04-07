# Install Nginx
sudo bash -c 'cat > /etc/apt/sources.list.d/nginx.list << EOL
deb http://nginx.org/packages/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/ubuntu/ xenial nginx
EOL'

wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
sudo apt-get update
sudo apt-get install nginx -Y

# Install MariaDB
sudo apt-get install mariadb-server -Y # Or MySQL: sudo apt-get install mysql-server
sudo service mysql stop # Stop the MySQL if is running.
#sudo mysql_install_db
#sudo service mysql start
#sudo mysql_secure_installation

# Install PHP 7.4
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.4 -Y

# Install needed modules for PHP
sudo apt-get install php7.4-fpm php7.4-mysql php7.4-curl php7.4-gd php7.4-bz2 php7.4-mbstring php7.4-xml php7.4-zip

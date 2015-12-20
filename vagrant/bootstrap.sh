#Install software
sudo apt-get update
sudo apt-get -y install nginx python-pip python-virtualenv python-setuptools python-dev

#Setup software enviroment
#sudo virtualenv /var/www/sites/house-led.dev/house-led
#cd /var/www/sites/house-led.dev/house-led
#source bin/activate
#pip install Django
#pip install uwsgi
#django-admin.py startproject house_led
#cd house_led

#Assign permissions to nginx user, make web dir public
sudo chown -R www-data:www-data /var/www/sites/house-led.dev
sudo chmod 755 /var/www

#Add Vhost entries and enable site
cp /vagrant/config/house-led.dev /etc/nginx/sites-available/house-led.dev
rm /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/house-led.dev /etc/nginx/sites-enabled/house-led.dev
sudo service nginx restart

#Add entry to hosts file
cp /vagrant/config/hosts /etc/hosts

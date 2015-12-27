#Install software
sudo apt-get update
sudo apt-get -y install nginx python-pip python-virtualenv python-setuptools python-dev

#Create remote dirs
mkdir /var/log/uwsgi
mkdir /var/log/uwsgi/vassals

#Setup software enviroment
export VIRTUALENV=/var/www/sites/house-led.dev
virtualenv --system-site-packages $VIRTUALENV
#Important to remember below only works in the CURRENT shell ie: the provision shell
source $VIRTUALENV/bin/activate
cd /var/www/sites/house-led.dev
echo "Virtual env activated"
pip install -r /var/custom_config_files/requirements.txt

#Assign permissions to nginx user, make web dir public
sudo chown -R www-data:www-data /var/www/sites/house-led.dev
sudo chmod 755 /var/www
echo "Activating uwsgi"
#uwsgi --ini house_led.ini
sudo pip install uwsgi
uwsgi --emperor /etc/uwsgi/vassals --ini /var/www/sites/house-led.dev/house_led.ini

#Add Vhost entries and enable site
echo "Resolving web server configs"
cp /vagrant/config/house-led.dev /etc/nginx/sites-available/house-led.dev
rm /etc/nginx/sites-available/default
sudo ln -s /etc/nginx/sites-available/house-led.dev /etc/nginx/sites-enabled/house-led.dev
sudo service nginx restart

#Add entry to hosts file
cp /vagrant/config/hosts /etc/hosts

# README #

Open source web component interface with back-end for sending signals to GPIO's on a raspberry-pi 3 for controlling room lighting.

### Version ###

Pre-release

### Prerequisite's ###

64-bit CPU.

Installation of the following:
Virtualbox - https://www.virtualbox.org/wiki/Downloads
Vagrant - https://www.vagrantup.com/downloads.html

### Setup ###

Ensure hardware virtualization is enabled.
Ensure Network bridging is enabled on your VM provider
Run "vagrant up" from you command line (ensure vagrant is added to your path)

Username/password: vagrant

### Development ###

The project uses uwsgi and is configured for touch reload to view your code changes in:
/var/www/sites/house-led.dev/house_led/house_led/settings.py

### Who do I talk to? ###

For further enquiries contact me@davidcrotty.net

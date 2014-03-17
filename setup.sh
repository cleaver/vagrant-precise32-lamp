#!/bin/sh
if [ ! -d /vagrant_data/www ]; then
  mkdir /vagrant_data/www
  chown vagrant /vagrant_data/www
  chgrp www-data /vagrant_data/www
  chmod 775 /vagrant_data/www
  rm -rf /var/www
  ln -s /vagrant_data/www /var/www
fi

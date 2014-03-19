#!/bin/sh
if [ ! -d /vagrant_data/www ]; then
  mkdir /vagrant_data/www
  chown vagrant /vagrant_data/www
  chgrp www-data /vagrant_data/www
  chmod 775 /vagrant_data/www
  rm -rf /var/www
  ln -s /vagrant_data/www /var/www
fi

if [ ! -d /home/vagrant/.oh-my-zsh ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
  cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
  usermod -s /bin/zsh vagrant
fi

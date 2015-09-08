#!/bin/bash

# Print text when running vagrant up.
echo "Starting VM..."

# Keep packages up to date.
sudo apt-get update
sudo apt-get upgrade -y

# Add extras not included w/scotchbox.
sudo apt-get install php5-xdebug -y
sudo service apache2 restart

# Jekyll
sudo gem install bundler
sudo gem install jekyll
sudo bundle install

alias cls="clear"
alias cdp="cd /var/www/public"

# Add Composer to PATH.
export PATH="~/.composer/vendor/bin:$PATH"


# Mail Catcher
gem install mailcatcher
mailcatcher --http-ip=0.0.0.0 -f
#in /etc/php5/apache2/php.ini add this line sendmail_path = /usr/bin/env catchmail

# If don't work, install Mailcatcher Dependencies (sqlite, ruby)
# sudo apt-get install -y libsqlite3-dev ruby1.9.1-dev

echo "Installation completed !"

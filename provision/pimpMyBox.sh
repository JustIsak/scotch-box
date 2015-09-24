#!/bin/bash

# Print text when running vagrant up.
echo "Starting VM..."

# Keep packages up to date.
sudo apt-get update
sudo apt-get upgrade -y

# Add extras not included w/scotchbox.
sudo apt-get install php5-xdebug -y
sudo service apache2 restart


##########
# Jekyll #
##########
sudo gem install bundler
sudo gem install jekyll
sudo bundle install

alias cls="clear"
alias cdp="cd /var/www/public"


################
# Mail Catcher #
################
gem install mailcatcher
mailcatcher --http-ip=0.0.0.0 -f
#in /etc/php5/apache2/php.ini add this line sendmail_path = /usr/bin/env catchmail

# If don't work, install Mailcatcher Dependencies (sqlite, ruby)
# sudo apt-get install -y libsqlite3-dev ruby1.9.1-dev


##################
# COMPOSER TOOLS #
##################
# Add Composer to PATH.
export PATH="~/.composer/vendor/bin:$PATH"
sudo composer self-update

# PHP copy/past detector + dead code detector
composer global require "sebastian/phpcpd=*"
composer global require 'sebastian/phpdcd=*'

# PDEPEND
composer global require "pdepend/pdepend"

# PHPMD
# if fail, copy/past this 3 lines : https://getcomposer.org/doc/articles/troubleshooting.md#proc-open-fork-failed-errors
sudo composer global require "phpmd/phpmd"
# example : phpmd path/to/file.php text codesize,unusedcode,naming

# PHPCS
composer global require "squizlabs/php_codesniffer=*"

# phpmetrics
composer global require "halleck45/phpmetrics"
# phpmetrics --report-html=myreport.html cvq/evo2015/application/

# phploc
composer global require "phploc/phploc=*"

echo "Installation completed !"

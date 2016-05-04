# Install PHP7 (will remove php5)

1. Update package list

    ```sh
    sudo apt-get install python-software-properties
    sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
    ```

2. Install PHP7 and remove PHP5

    ```sh
    sudo apt-get update
    sudo apt-get purge php5-common -y
    sudo apt-get install -y \
        && php7.0 \
        && php7.0-fpm \
        && php7.0-mysql \
        && php-curl \
        && libapache2-mod-php7.0 \
        && php7.0-mbstring
    sudo apt-get --purge autoremove -y
    ```

3. Set timezone (i.e. date.timezone = Europe/Paris)

    ```sh
    sudo vi /etc/php/7.0/cli/php.ini
    sudo vi /etc/php/7.0/apache2/php.ini
    ```

4. Restart apache service

    ```sh
    sudo a2enmod php7.0
    sudo service apache2 restart
    ```

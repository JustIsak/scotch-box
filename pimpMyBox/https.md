# Enable HTTPS

Given, your host is **scotch.local**.

1. First, you need to generate private/public keys

    ```
    $ cd /etc/apache2/
    $ openssl genrsa 1024 > scotch.local.key
    $ openssl req -new -x509 -nodes -sha1 -days 3650 -key scotch.local.key -out scotch.local.crt -config /etc/ssl/openssl.cnf
    ```

2. Then edit your file configuration: (e.g. `$ sudo vi /etc/apache2/sites-available/scotch.local.conf`)

    ```
    <VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName scotch
        ServerAlias scotch.local
        DocumentRoot /var/www/scotch/public/web
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>

    <VirtualHost *:443>
        ServerAdmin webmaster@localhost
        ServerName scotch
        ServerAlias scotch.local
        DocumentRoot /var/www/scotch/public/web
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        SSLEngine on
        SSLCertificateFile /etc/apache2/scotch.local.crt
        SSLCertificateKeyFile /etc/apache2/scotch.local.key
    </VirtualHost>
    ```

3. Restart apache

    ```
    $ sudo service apache2 restart
    ```

# Creatint a custom domain (elsewhere scotchbox directory)

If you want to create a subdomain like http://$NEWDOM.local

1. Create directory

    ```sh
    $ mkdir -p /var/www/$NEWDOM/public
    ```
2. Update your vagrant file.

    ```
    config.vm.synced_folder "../../sites/$NEWDOM/", "/var/www/$NEWDOM/public/", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
    ```
    FYI, my file architecture:

    ```
    /box/scotch-box
        /another-box
    
    /sites/aWebsite
          /anotherWebsite
          /...
    ```
3. Creating new vhost

    ```sh
    $ sudo cp /etc/apache2/sites-available/scotchbox.local.conf /etc/apache2/sites-available/$NEWDOM.conf
    $ sudo nano /etc/apache2/sites-available/$NEWDOM.conf
    ```
    ```xml
    <VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName stia
        ServerAlias stia.local
        DocumentRoot /var/www/$NEWDOM/public/web
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>
    ```

4. Enable new domain

    ```
    $ sudo a2ensite $NEWDOM.conf
    ```

5. Restart apache

    ```
    $ sudo service apache2 restart
    ```

6. Update host file

    ```
    #  C:\Windows\System32\drivers\etc\host
    192.168.33.10 $NEWDOM.local
    ```

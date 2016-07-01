# Creating a custom domain (elsewhere scotchbox directory)

Given, $NEWDOM is the subdomain you want to create (http://$NEWDOM.local).

1. Create directory

    ```sh
    mkdir -p /var/www/$NEWDOM/public
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
    sudo cp /etc/apache2/sites-available/scotchbox.local.conf /etc/apache2/sites-available/$NEWDOM.conf
    sudo nano /etc/apache2/sites-available/$NEWDOM.conf
    ```
    ```xml
    <VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName $NEWDOM
        ServerAlias $NEWDOM.local
        DocumentRoot /var/www/$NEWDOM/public/web
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>
    ```

4. Enable new domain

    ```sh
    sudo a2ensite $NEWDOM.conf
    ```

5. Restart apache

    ```sh
    sudo service apache2 restart
    ```

6. Update host file on host OS

    ```
    # C:\Windows\System32\drivers\etc\host or /etc/hosts
    192.168.33.10 $NEWDOM.local
    ```

7. (optional) update host inside box

    ```
    127.0.0.1 $NEWDOM.local
    ```

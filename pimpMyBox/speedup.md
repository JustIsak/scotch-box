# Fix Windows Latency with PHP Apps

PHP application may be slow with Vagrant & Windows.

## Fix guide

1. Install [VirtualBox Guest plugin](https://github.com/dotless-de/vagrant-vbguest)

     ```
     vagrant plugin install vagrant-vbguest
     ```

2. Install [Vagrant WinNFSd plugin](https://github.com/winnfsd/vagrant-winnfsd)

    ```
    vagrant plugin install vagrant-winnfsd
    ```

3. [Install PHP7](php7.md)


## Using Symfony ?

Add this methods into your AppKernel:

```php
//app/AppKernel.php
<?php

class AppKernel extends Kernel
{
    // ...

    public function getCacheDir()
    {
        if (in_array($this->environment, array('dev', 'test'))) {
            return '/dev/shm/appname/cache/' .  $this->environment;
        }

        return parent::getCacheDir();
    }

    public function getLogDir()
    {
        if (in_array($this->environment, array('dev', 'test'))) {
            return '/dev/shm/appname/logs';
        }

        return parent::getLogDir();
    }
}
```

And add this aliases into your .bashrc file:

```sh
# Remove cache
alias cache-clear='rm -rf /dev/shm/appname/cache/'
# Copy logs into your Sf project
alias cplogs='cp -R /dev/shm/appname/logs /var/www/enpc-api/public/app'
```


## VBGuest error?

```
Got different reports about installed GuestAdditions version:
Virtualbox on your host claims:   4.3.28
VBoxService inside the vm claims: 5.0.16
Going on, assuming VBoxService is correct...
GuestAdditions seems to be installed (5.0.16) correctly, but not running.
```

Update your VBGuest plugin: `vagrant plugin install vagrant-vbguest`

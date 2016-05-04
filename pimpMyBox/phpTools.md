# COMPOSER TOOLS

```
sudo composer self-update
```

## Xdebug

```
sudo apt-get install php5-xdebug -y
sudo service apache2 restart
```

## PHP copy/past detector + dead code detector

```
composer global require "sebastian/phpcpd=*"
composer global require "sebastian/phpdcd=*"
```

## PDEPEND

```
composer global require "pdepend/pdepend"
```

## PHPMD

```
sudo composer global require "phpmd/phpmd"
```
Using : ``` phpmd path/to/file.php text codesize,unusedcode,naming```  
If fail, copy/past this 3 lines : https://getcomposer.org/doc/articles/troubleshooting.md#proc-open-fork-failed-errors  

## PHPCS

```
composer global require "squizlabs/php_codesniffer=*"
```

## phpmetrics

```
composer global require "phpmetrics/phpmetrics"
```

Using: ```phpmetrics --report-html=myreport.html path/to/src/```

## phploc (Line of code)

```
composer global require "phploc/phploc=*"
```

# Alias

## Add alias command

```
alias cls='clear'
alias jek='jekyll serve -H 0.0.0.0 --drafts --force_polling'
alias cdp='cd /var/www/public'
alias sf='php app/console'
```

## ...or persist :)

First line is empty (improve readability)

```
echo "" >> /home/vagrant/.bashrc
echo "alias cls='clear'" >> /home/vagrant/.bashrc
echo "alias jek='jekyll serve -H 0.0.0.0 --drafts --force_polling'" >> /home/vagrant/.bashrc
echo "alias cdp='cd /var/www/public'" >> /home/vagrant/.bashrc
echo "alias sf='php app/console'" >> /home/vagrant/.bashrc
```

Then: `source ~/.bashrc`

# Alias

## Add alias command

```sh
alias cls='clear'
alias jek='jekyll serve -H 0.0.0.0 --drafts --force_polling'
alias cdp='cd /var/www/public'

# Symfony aliases
alias sf='php app/console'
alias sfcl='sf cache:clear'
alias sfsr='sf server:run -vvv'
alias sfcw='sf cache:warmup'
alias sfroute='sf debug:router'
alias sfcontainer='sf debug:container'
alias sfgb='sf generate:bundle'
alias sfdev='sf --env=dev'
alias sfprod='sf --env=prod'
# PHP Tests tools
alias behat='bin/behat'
alias punit='phpunit -c app'
```

## ...or persist :)

First line is empty (improve readability)

```sh
echo "" >> /home/vagrant/.bashrc
echo "alias cls='clear'" >> /home/vagrant/.bashrc
echo "alias jek='jekyll serve -H 0.0.0.0 --drafts --force_polling'" >> /home/vagrant/.bashrc
echo "alias cdp='cd /var/www/public'" >> /home/vagrant/.bashrc

echo "alias sf='php app/console'" >> /home/vagrant/.bashrc
echo "alias sfcl='sf cache:clear'" >> /home/vagrant/.bashrc
echo "alias sfsr='sf server:run -vvv'" >> /home/vagrant/.bashrc
echo "alias sfcw='sf cache:warmup'" >> /home/vagrant/.bashrc
echo "alias sfroute='sf debug:router'" >> /home/vagrant/.bashrc
echo "alias sfcontainer='sf debug:container'" >> /home/vagrant/.bashrc
echo "alias sfgb='sf generate:bundle'" >> /home/vagrant/.bashrc
echo "alias sfdev='sf --env=dev'" >> /home/vagrant/.bashrc
echo "alias sfprod='sf --env=prod'" >> /home/vagrant/.bashrc
echo "alias behat='bin/behat'" >> /home/vagrant/.bashrc
echo "alias punit='phpunit -c app'" >> /home/vagrant/.bashrc
```

Then: `source ~/.bashrc`

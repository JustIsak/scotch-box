# Jekyll (for my personal website)

## Installation

1. Install gem

    ```sh
    gem install bundler
    cd /var/www/public/maxpou.github.io
    bundle install
    ```

2. Port forwarding (in Vagrantfile)

    ```
    config.vm.network "forwarded_port", guest: 4000, host: 4000
    ```

## Using

```
cd /path/to/app
jekyll serve -H 0.0.0.0 --drafts --force_polling
```

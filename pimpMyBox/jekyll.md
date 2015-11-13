# Jekyll

## Installation

1. Install gem

```
gem install bundler
gem install jekyll
bundle install
```

2. Forward ports (in Vagrantfile)
```
config.vm.network "forwarded_port", guest: 4000, host: 4000
```

## Using

```
cd /path/to/app
jekyll serve -H 0.0.0.0 --drafts --force_polling
```

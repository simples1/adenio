#!/bin/bash

# source /home/deploy/.bashrc
PATH=/home/deploy/.rbenv/plugins/ruby-build/bin:/home/deploy/.rbenv/shims:/home/deploy/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
cd /home/deploy/adenio/current
RAILS_ENV=production bundle install --path vendor/bundle
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:precompile

datetimestamp=$(date +%Y%m%d%H%M%S)
mv /home/deploy/adenio/releases/adenio/ /home/deploy/adenio/releases/$datetimestamp
rm current
sudo ln -sfn /home/deploy/adenio/releases/$datetimestamp current

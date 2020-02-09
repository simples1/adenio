#!/bin/bash

cd /home/deploy/adenio/releases/20200208040839
RAILS_ENV=production bundle install --path vendor/bundle
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:precompile
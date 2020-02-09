#!/bin/bash

cd /home/deploy/adenio/current
echo $(pwd) > ppp.rb
echo $(whoami) > user.rb
bundle install --path vendor/bundle
bundle exec rake db:migrate
bundle exec rake assets:precompile
#!/bin/bash
source /home/deploy/.bashrc
cd /home/deploy/adenio/current
echo $(pwd) > ppp.rb
echo $(whoami) > user.rb
echo $($PATH) > path.rb
RAILS_ENV=production bundle install --path vendor/bundle
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:precompile
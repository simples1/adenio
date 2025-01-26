#!/bin/bash
PATH=/home/deploy/.rbenv/plugins/ruby-build/bin:/home/deploy/.rbenv/shims:/home/deploy/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

FILE=/home/deploy/adenio/shared/tmp/sockets/adenio-puma.sock
if [ -e "$FILE" ]; then
  rm $FILE
fi

cd /home/deploy/adenio/current
bundle exec puma -C /home/deploy/adenio/shared/puma.rb config.ru -d

sudo service nginx restart
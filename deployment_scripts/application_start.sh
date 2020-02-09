#!/bin/bash

sudo service nginx restart
cd /home/deploy/adenio/current
rm /home/deploy/adenio/shared/tmp/sockets/*
bundle exec puma -C /home/deploy/adenio/shared/puma.rb config.ru -d
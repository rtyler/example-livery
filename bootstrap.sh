#!/bin/sh -xe

apt-get install -y ruby1.8 \
                   ruby1.8-dev \
                   libopenssl-ruby1.8 \
                   rubygems

gem install puppet --no-ri --no-rdoc

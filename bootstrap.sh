#!/bin/sh -xe

apt-get update

apt-get install -y ruby1.8 \
                   ruby1.8-dev \
                   libopenssl-ruby1.8 \
                   rubygems

gem install puppet --no-ri --no-rdoc

export PATH=/var/lib/gems/1.8/bin:$PATH

puppet apply --verbose --modulepath=./modules manifests/site.pp

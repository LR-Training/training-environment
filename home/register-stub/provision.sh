#!/bin/bash
set -e

gem install sinatra
gem install rerun

cat <<EOF >> /etc/rc.local
  nohup ruby /home/vagrant/register-stub/run.rb >> log.txt 2>&1 &

EOF

cat <<EOF >> /etc/rc0.d/register-stub
#! /bin/sh
cd /home/vagrant
nohup ruby /home/vagrant/register-stub/run.rb >> log.txt 2>&1 &

EOF

nohup ruby /home/vagrant/test-sinatra-website/run.rb >> log.txt 2>&1 &

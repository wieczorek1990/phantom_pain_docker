#!/usr/bin/env bash

if [ ${EUID} -eq 0 ]
then
  sudo=
else
  sudo=sudo
fi

${sudo} apt-get update
${sudo} apt-get install -y build-essential curl git ruby ruby-dev tor
${sudo} gem install bundler --path vendor/bundle
bundle install

${sudo} cp torrc /etc/tor/torrc
${sudo} mkdir /etc/tor/cookie/
${sudo} chmod 777 /etc/tor/cookie/


#!/usr/bin/env bash

sudo apt-get update
echo "========================= install dependencies for install rbenv ==========================="
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
echo "========================= install rbenv =========================================="
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >>  ~/.bashrc
echo 'eval "$(rbenv init -)"' >>  ~/.bashrc
echo "========================= install ruby build plugin for rbenv ======================="
git clone https://github.com/rbenv/ruby-build.git  ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
echo "========================= install ruby v2.5.0 =========================================="
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"
rbenv install 2.5.0
rbenv global 2.5.0
ruby -v
gem -v
echo "========================= install bundler dependencies manager for ruby ====================="
gem install bundler
rbenv rehash

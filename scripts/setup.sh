#!/bin/bash

set -eu

export LANG=C

# Mint
if [ ! $(which mint) ]; then
  echo "  + Installing Mint..."
  brew install mint
else
  echo "  + Mint found."
fi

mint bootstrap

# Bundler
if test ! $(which bundle); then
  echo "  + Installing bundler..."
  gem install bundler
else
  echo "  + Bundler found."
fi

# Gem
echo "  + Installing gems."
bundle install --path=vendor/bundle

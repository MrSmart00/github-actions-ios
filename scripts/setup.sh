#!/bin/bash

set -eu

export LANG=C

if [ ! $(which mint) ]; then
  echo "  + Installing Mint..."
  brew install mint
else
  echo "  + Mint found."
fi

mint bootstrap

# if [ ! $(mint which xcodegen) ]; then
#   echo "  + Installing Sourcery..."
#   brew install sourcery
# else
#   echo "  + Sourcery found."
# fi

# if [ ! $(which swiftlint) ]; then
#   echo "  + Installing SwiftLint..."
#   brew install swiftlint
# else
#   echo "  + SwiftLint found."
# fi

# if [ ! $(which swiftformat) ]; then
#   echo "  + Installing SwiftFormat..."
#   brew install swiftformat
# else
#   echo "  + SwiftFormat found."
# fi

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

# cp .Rambafile Rambafile
# bundle exec generamba template install
# rm -rf Rambafile
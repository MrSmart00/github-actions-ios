#!/bin/bash

set -eu

# bootstrap

echo "  + Generate xcodeproje by XcodeGen."
mint run xcodegen
bundle exec pod install

echo ""
echo "********************************************************"
echo " This project has set up."
echo " Open xcworkspace file and Enjoy iOS App Develop!! "
echo "********************************************************"
echo ""

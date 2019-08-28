#!/bin/bash
cat << EOS

 gingama4

 The elapsed time does not matter.
 Because speed is important.

EOS

#
# repository update
#
git checkout master
git pull origin master

#
# Homebrew update and upgrade
#
brew upgrade
brew cask upgrade

#
# App Store app upgrade
#
mas upgrade

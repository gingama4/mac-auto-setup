#!/bin/bash
cat << EOS

 gingama4

 The elapsed time does not matter.
 Because speed is important.

EOS

#
# Memorize user pass
#
read -sp "Your Password: " pass;

#
# Install homebrew.
#
echo " --------- Homebrew ----------"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all --cleanup
brew -v
echo " ------------ END ------------"

#
# Install git
#
echo " ------------ Git ------------"
brew install git
git --version
echo " ------------ END ------------"

#
# gingama4/mac-auto-setup.git
#
echo " ------------ gingama4/mac-auto-setup.git ------------"
git clone https://github.com/gingama4/mac-auto-setup.git
echo " ------------ END ------------"

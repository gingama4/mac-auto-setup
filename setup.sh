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
# Mac App Store apps install
#
echo " ---- Mac App Store apps -----"
brew install mas
mas install 497799835  # Xcode (8.2.1)
echo " ------------ END ------------"

#
# Install zsh
#
echo " ------------ zsh ------------"
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff
which -a zsh
echo $pass | sudo -S -- sh -c 'echo '/usr/local/bin/zsh' >> /etc/shells'
chsh -s /usr/local/bin/zsh
echo " ------------ END ------------"

#
# Install oh-my-zsh
#
echo " ---------------- Oh My Zsh ------------"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo" ------------ END ------------"

#
# Install vim
#
echo " ------------ Vim ------------"
brew install vim --with-override-system-vi
echo " ------------ END ------------"

#

#
# Install ruby
#
#echo " ----------- Ruby ------------"
#brew install rbenv
#brew install ruby-build
#rbenv --version
#rbenv install -l
#ruby_latest=$(rbenv install -l | grep -v '[a-z]' | tail -1 | sed 's/ //g')
#rbenv install $ruby_latest
#rbenv global $ruby_latest
#rbenv rehash
#ruby -v
#echo " ------------ END ------------"

#
# Install dotfiles system
#
echo " ---------- dotfiles ---------"
while true; do
  read -p 'Now download and set dotfiles? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
      source ~/.zshrc
      break;
      ;;
    [Nn]* )
      echo "Skip dotfiles"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;
echo " ------------ END ------------"

#
# Kryptco
#
#echo " ---------- kryptco ---------"
#brew install --HEAD kryptco/tap/kr
#kr pair
#echo " ---------- END ---------"


while true; do
  read -p 'Now install web apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/app.sh
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;

while true; do
  read -p 'Now install App Store apps? [Y/n]' Answer
  case $Answer in
    '' | [Yy]* )
      git clone https://github.com/gingama4/dotfiles.git
      break;
      ;;
    [Nn]* )
      echo "Skip install"
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done;


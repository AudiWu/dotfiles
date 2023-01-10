#!/bin/sh

# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

echo ''

# Formatter for logging
info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m??\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# Start running dotfiles

info "Setting up your Mac..."

# Install or update homebrew.
if test ! $(which brew); then
    info "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    success "Homebrew succesfully installed"
else
    info "Updating Homebrew"
    brew update
    brew upgrade
    success "HomeBrew successfully updated"
fi

# Install dependecies with brew bundle
info "Installing dependecies using homebrew"
brew tap homebrew/bundle
brew bundle
success "Dependencies successfully installed"

echo ''
success 'All installed!'



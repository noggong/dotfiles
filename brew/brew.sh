#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
# brew update

# Upgrade any already-installed formulae.  brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install cmake

# Update System Ruby, Python for system-wide libraries
# should override with language-specific version manager ( pyenv, rvm etc )
brew install python3
brew install node

# Python-based Development
brew install pyenv
brew install pyenv-virtualenv
brew install autoenv

# Node-based Development
# https://github.com/creationix/nvm
brew install nvm

# https://github.com/rupa/z
brew install z

# Git, Github
brew install git
brew install hub
brew install ghi
brew install git-flow-avh

brew install vim --override-system-vi
brew install macvim --override-system-vim

brew install ctags
brew install curl
brew install wget
brew install httpie
brew install tree

# Zsh
brew install zsh
brew install reattach-to-user-namespace
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install zsh-history-substring-search

brew install postgresql

brew install graphviz

brew install tmux

brew install socat
brew install libuv
brew install automake
brew install autoconf

brew install redis
brew install rabbitmq

# https://github.com/dylang/grunt-notify/issues/92

# Search within terminal
brew install the_silver_searcher
brew install peco
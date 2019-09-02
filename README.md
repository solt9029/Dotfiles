# Dotfiles

## Setup

```sh
git clone git@github.com:solt9029/Dotfiles.git ~/.dotfiles
cd .dotfiles
chmod +x ./setup.sh
./setup.zh
brew bundle
```

## Update

```sh
rm Brewfile
brew bundle dump
```
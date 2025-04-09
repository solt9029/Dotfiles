# Dotfiles

## Setup

```sh
git clone git@github.com:solt9029/Dotfiles.git ~/.dotfiles
cd .dotfiles
chmod +x ./before.sh
./before.sh
brew bundle

# do some setup
```

## Update

```sh
rm Brewfile
brew bundle dump
```
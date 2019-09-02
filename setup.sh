#!/bin/zsh

# prezto
if [ ! -d "${HOME}/.zprezto" ] ; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"
fi

# vundle
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ] ; then
  git clone https://github.com/gmarik/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"
fi

# sdkman
if [ ! -d "${HOME}/.sdkman" ] ; then
  curl -s http://get.sdkman.io | zsh
  source "${HOME}/.sdkman/bin/sdkman-init.sh"
fi

# symbolic link
for f in .??* ; do
  [[ "${f}" == ".git" ]] && continue # ignore files
  ln -s "${HOME}/.dotfiles/${f}" "${HOME}/${f}"
done

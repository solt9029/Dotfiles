#!/bin/zsh

# prezto
if [ ! -d "${HOME}/.zprezto" ] ; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

for f in .??* ; do
  # ignore files
  [[ "${f}" == ".git" ]] && continue
  
  # link all files
  ln -s "${HOME}/.dotfiles/${f}" "${HOME}/${f}"
done

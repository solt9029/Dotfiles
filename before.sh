#!/bin/sh
 
# prezto
if [ ! -d "${HOME}/.zprezto" ] ; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${HOME}/.zprezto"
fi

if [ ! -d "${HOME}/.zsh/zsh-autosuggestions" ] ; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "${HOME}/.zsh/zsh-autosuggestions"
fi

# vundle
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ] ; then
  git clone https://github.com/gmarik/Vundle.vim.git "${HOME}/.vim/bundle/Vundle.vim"
fi

# symbolic link
for f in .??* ; do
  [[ "${f}" == ".git" ]] && continue # ignore files
  ln -s "${HOME}/.dotfiles/${f}" "${HOME}/${f}"
done

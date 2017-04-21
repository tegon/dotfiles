#!/bin/bash

echo "Setup configuration files..."

config_files=~/dotfiles/config/*

for file in $config_files; do
  config=$(basename $file)
  echo "Creating symlink for .$config"
  ln -s $file ~/dot-test/.$config
done

echo "Setup other files..."

files=~/dotfiles/*

for file in $files; do
  filename=$(basename $file)
  [[ $filename =~ ^(setup.sh|vim|config|themes|LICENSE|README)$ ]] && continue
  echo "Creating symlink for $filename"
  ln -s $file ~/dot-test/$filename
done

# echo "Setup vim plugins..."
#
# mkdir -p ~/dot-test/.vim/bundle
# cp -R ~/dotfiles/vim/bundle/* ~/dot-test/.vim/

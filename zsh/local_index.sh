#!/bin/sh

DOTFILES_ZSH_HOSTS="$HOME/.dotfiles/zsh/hosts"

create_host_config() {
  hostname="$1"
  target_file="$DOTFILES_ZSH_HOSTS/${hostname}.local.zshrc"

  mkdir -p "$DOTFILES_ZSH_HOSTS"

  if [ ! -f "$target_file" ]; then
    echo "File $target_file does not exist. Creating..."
    touch "$target_file"
    echo "Created empty file: $target_file"
  fi
}

load_host_config() {
  hostname="$1"
  target_file="$DOTFILES_ZSH_HOSTS/${hostname}.local.zshrc"

  if [ -f "$target_file" ]; then
    . "$target_file"
  else
    echo "No specific configuration for this hostname. Please create a new one in $DOTFILES_ZSH_HOSTS/"
  fi
}

main() {
    current_host=$(hostname);
    create_host_config "$current_host"
    load_host_config "$current_host"
}

main
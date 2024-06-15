#!/bin/bash

# Dotfiles repository directory
DOTFILES_REPO="$HOME/.dotfiles"

# Files to skip (add filenames or patterns you want to exclude)
SKIP_FILES=(".gitignore" ".DS_Store")

# Find dotfiles in the repository
dotfiles=$(find "$DOTFILES_REPO" -maxdepth 2 -type f -name ".*")

# Backup existing dotfiles and create symlinks
for file in $dotfiles; do
    filename=$(basename "$file")
    if [[ " ${SKIP_FILES[@]} " =~ " ${filename} " ]]; then
        continue # Skip files in SKIP_FILES
    fi

    if [ -h "$HOME/$filename" ]; then
        rm "$HOME/$filename" # Remove existing symlink
    elif [ -f "$HOME/$filename" ]; then
        mv "$HOME/$filename" "$HOME/$filename.bak" # Backup existing dotfile
    fi

    ln -s "$file" "$HOME/$filename" # Create symlinks
done

echo "Dotfiles installed!"

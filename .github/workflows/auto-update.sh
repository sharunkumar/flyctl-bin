#!/bin/bash

set -euo pipefail

# Get the latest release version from GitHub API
latest_version=$(curl -s https://api.github.com/repos/superfly/flyctl/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')

# Remove the 'v' prefix if present
latest_version=${latest_version#v}

# Update the pkgver in PKGBUILD
sed -i "s/^pkgver=.*/pkgver=\"$latest_version\"/" PKGBUILD

updpkgsums

makepkg --printsrcinfo >.SRCINFO

# Commit and push the changes if there are any
if [[ -n $(git status -s) ]]; then
    git config --global user.email "sharun@sharunkumar.com"
    git config --global user.name "Sharun"
    git add PKGBUILD
    git commit -m "chore: update to v$latest_version"
    git push
fi

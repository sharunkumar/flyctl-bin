#!/bin/bash

set -euo pipefail

# Get the latest release version from GitHub API
latest_version=$(curl -s https://api.github.com/repos/superfly/flyctl/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')

# Remove the 'v' prefix if present
latest_version=${latest_version#v}

# Silently abort if the version contains 'pre-'
if [[ "$latest_version" == *"pre-"* ]]; then
    echo "Aborting: latest version ($latest_version) is a pre-release version."
    exit 0
fi

# Update the pkgver in PKGBUILD
sed -i "s/^pkgver=.*/pkgver=\"$latest_version\"/" PKGBUILD

updpkgsums

makepkg --printsrcinfo >.SRCINFO

# Ensure build passes
makepkg --noconfirm -si

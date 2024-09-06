#!/bin/bash

set -euo pipefail

# Get the latest release version from GitHub API
latest_version=$(curl -s https://api.github.com/repos/superfly/flyctl/releases/latest | grep -oP '"tag_name": "\K(.*)(?=")')

# Remove the 'v' prefix if present
latest_version=${latest_version#v}

# Update the pkgver in PKGBUILD
sed -i "s/^pkgver=.*/pkgver=$latest_version/" PKGBUILD

# # Commit and push the changes
# git config --global user.email "github-actions[bot]@users.noreply.github.com"
# git config --global user.name "GitHub Actions"
# git add PKGBUILD
# git commit -m "chore: update flyctl to $latest_version"
# git push

#!/bin/bash

set -o errexit -o pipefail -o nounset

echo '::group::Creating builder user'
useradd --create-home --shell /bin/bash builder
passwd --delete builder
mkdir -p /etc/sudoers.d/
echo "builder  ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/builder
echo '::endgroup::'

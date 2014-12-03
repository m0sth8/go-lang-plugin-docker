#!/bin/bash
set -e
source /build/buildconfig
set -x

apt-get update && apt-get install -y --no-install-recommends git ant

# install idea
mkdir /opt/intelij
curl  -sSL http://download.jetbrains.com/idea/ideaIC-$IDEA_VERSION.tar.gz | tar -C /opt/intelij -xz

# clean
apt-get clean
rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
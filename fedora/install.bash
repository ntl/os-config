#!/usr/bin/env bash

set -eu

sudo dnf install \
  mozilla-fira-mono-fonts \
  ruby \
  vim-enhanced

sudo dnf groupinstall "Development Tools" "Development Libraries"

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude="PackageKit-gstreamer-plugin"

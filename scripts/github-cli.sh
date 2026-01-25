#!/bin/bash
set -e 

# nobara 
sudo dnf install -y dnf5-plugins &&
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo &&
sudo dnf install -y gh --repo gh-cli

gh auth login
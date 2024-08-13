#!/bin/bash

# Install cue
go install cuelang.org/go/cmd/cue@latest
cue version

# Install Hof
sudo curl -L https://github.com/hofstadter-io/hof/releases/download/v0.6.9/hof_v0.6.9_linux_amd64 \
    -o /usr/local/bin/hof 
sudo chmod +x /usr/local/bin/hof
hof version

echo "Setup git ..."
git config --global --add safe.directory /workspace
git config --list

echo "Ready!"
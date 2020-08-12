#!/bin/bash

mkdir -p ~/envs
if [ ! -f "~/.bash_profile" ]; then
    cat /conda-init-config.sh >> ~/.bash_profile
fi
. /usr/local/bin/start-notebook.sh
#!/bin/bash

mkdir -p ~/envs
cat /conda-init-config.sh >> ~/.bashrc
source ~/.bashrc
. /usr/local/bin/start-notebook.sh
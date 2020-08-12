#!/bin/bash

mkdir -p ~/envs
conda init
exec bash
. /usr/local/bin/start-notebook.sh
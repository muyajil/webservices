#!/bin/bash

mkdir -p ~/envs
if [ "$NB_UID" != $(id -u $NB_USER) ] ; then
    echo "Set $NB_USER UID to: $NB_UID"
    usermod -u $NB_UID $NB_USER
fi
jupyterhub-singleuser
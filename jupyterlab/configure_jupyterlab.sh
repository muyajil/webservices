#!/bin/bash

jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build
jupyter labextension install @jupyterlab/git --no-build
jupyter labextension install @ryantam626/jupyterlab_code_formatter --no-build
jupyter labextension install @jupyterlab/toc --no-build
jupyter labextension install jupyterlab-jupytext --no-build
jupyter labextension install @jupyterlab/server-proxy --no-build
jupyter labextension install @jupyterlab/debugger --no-build
jupyter serverextension enable --py jupyterlab_git --sys-prefix
pip install --upgrade jupyterlab-git
jupyter lab build
jupyter serverextension enable --py jupyterlab_code_formatter
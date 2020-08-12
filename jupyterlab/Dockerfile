FROM ubuntu:20.04

ENV CONDA_ENVS_PATH=~/envs
ENV PATH="/opt/miniconda3/bin:${PATH}"
ENV CONDA_PREFIX="/opt/miniconda3"
ENV TINI_VERSION="v0.19.0"
ENV SHELL=/bin/bash

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL -o /tmp/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash /tmp/miniconda.sh -b -p /opt/miniconda3

RUN curl -fsSL -o /usr/bin/tini https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT [ "/usr/bin/tini", "--" ]

RUN conda install -c conda-forge \
    code-server \
    jupyterlab \
    jupyter-vscode-proxy \
    jupyter_contrib_nbextensions \
    jupyterlab-git \
    jupyterlab_code_formatter

ADD configure_jupyterlab.sh /configure_jupyterlab.sh
RUN bash -c /configure_jupyterlab.sh

RUN conda init bash

ADD init.sh /init.sh

EXPOSE 8888

CMD ["/init.sh"]
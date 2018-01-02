FROM jupyter/scipy-notebook
RUN set -xe; \
  pip install jupyterlab ;\
  jupyter serverextension enable --py jupyterlab --sys-prefix
CMD ["start-jupyterlab.sh"]
COPY start-jupyterlab.sh /usr/local/bin/


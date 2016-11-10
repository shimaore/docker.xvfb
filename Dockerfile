FROM shimaore/debian:2.0.12

ENV install_dir /opt/test

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
  xvfb

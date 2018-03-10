FROM debian:stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    python-pip

RUN pip install setuptools
RUN pip install awscli --upgrade

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

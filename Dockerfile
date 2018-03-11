FROM debian:jessie-backports

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    docker.io \
    libltdl-dev \
    jq \
    python-pip

RUN pip install setuptools
RUN pip install awscli --upgrade

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

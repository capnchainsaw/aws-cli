FROM debian:jessie-backports

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    docker.io \
    git \
    jq \
    libltdl-dev \
    mysql-client \
    python-pip

RUN pip install setuptools
RUN pip install awscli --upgrade

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies and python3.9
RUN apt-get update && apt-get install -y \
    python3.9 \
    python3.9-dev \
    python3-pip \
    curl \
    libopengl-dev \
    libglx-dev \
    libglu-dev \
    libgtk2.0-0 \
    libsm-dev

ENV GMAT_VERSION R2022a
ENV GMAT_SHA1 ce3b64fbac680171b425a21fae511064b2c14a4e

RUN set -eux; \
    curl https://downloads.sourceforge.net/project/gmat/GMAT/GMAT-${GMAT_VERSION}/gmat-ubuntu-x64-${GMAT_VERSION}.tar.gz?use_mirror=autoselect -L -o gmat.tar.gz ; \
    echo "${GMAT_SHA1} gmat.tar.gz" > sha_verification ; \
    sha1sum -c sha_verification ; \
    tar xf gmat.tar.gz

ENV PATH "/GMAT/${GMAT_VERSION}/bin:$PATH"

WORKDIR /app

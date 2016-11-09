## BUILDING
##   (from project root directory)
##   $ docker build -t java-for-blakerockstar-docker .
##
## RUNNING
##   $ docker run java-for-blakerockstar-docker

FROM gcr.io/stacksmith-images/debian:wheezy-r10

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="gueiciu" \
    STACKSMITH_STACK_NAME="Java for blakerockstar/docker" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.0_111-0 --checksum a40aa0c9553e13bd8ddcc3d2ba966492b79d4f73d47cb1499c9ec54f441201eb

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app

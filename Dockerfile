FROM dwolla/jenkins-agent-core:4.13.2-1-jdk11-a73d9b7
MAINTAINER Dwolla Dev <dev+jenkins-aws-tools@dwolla.com>
LABEL org.label-schema.vcs-url="https://github.com/Dwolla/jenkins-agent-docker-awscli"

USER root
RUN apk add --update coreutils python py-pip python-dev jq && \
    pip install awscli && \
    rm -rf /var/cache/apk/*

USER jenkins

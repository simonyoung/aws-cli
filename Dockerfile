# Docker file to run AWS CLI and EB CLI tools
FROM alpine
LABEL maintainer="Simon Young <simon180@mac.com>"

RUN apk --no-cache add \
        bash \
        less \
        groff \
        jq \
        git \
        curl \
        python \
        py-pip \
        nodejs=8.12.0-r0 \
        yarn=1.9.4-r0

RUN pip install --upgrade pip \
        awsebcli \
        awscli

RUN yarn global add serverless

# Expose credentials volume
RUN mkdir ~/.aws

FROM python:3.7
MAINTAINER Ihor Kuzmenko "0585ec@gmail.com"

ENV PYTHONUNBUFFERED 1

# Install base dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        python \
        rsync \
    && apt-get clean


RUN mkdir /adeline
WORKDIR /adeline
ADD . .

RUN pip install --upgrade pip
RUN pip install -r requirements/local.txt

EXPOSE 8088

FROM python:3.8-slim

RUN apt-get update && \
    apt-get -y install gcc  && \
    rm -rf /var/lib/apt/lists/* && \
    pip install ginza==4.0.0

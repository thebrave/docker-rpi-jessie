FROM resin/rpi-raspbian:jessie
MAINTAINER Jean Berniolles <jean@berniolles.fr>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get -y dist-upgrade \
  && apt-get clean && \
	&& echo -n > /var/lib/apt/extended_states
  && rm -rf /var/lib/apt/lists/*

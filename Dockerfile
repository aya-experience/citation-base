FROM node:7.6-slim

# Enviroment variables
ENV HOMEDIR /data
RUN apt-get update && apt-get install -y \
	build-essential \
	libssl-dev \
	git \
	&& mkdir -p ${HOMEDIR}
WORKDIR ${HOMEDIR}
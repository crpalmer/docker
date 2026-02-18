FROM node:24-bookworm

WORKDIR /app

COPY FoundryVTT-Linux-13.351.zip /app/foundry.zip

RUN apt update && apt install -y --no-install-recommends \
	libasound-dev \
	libatk1.0-dev \
	libatk-bridge2.0-dev \
	libcups2-dev \
	libdbus-1-dev \
	libexpat1 \
	libglib2.0-0 \
	libgtk-3-dev \
	libnss3
RUN apt install unzip
RUN unzip foundry.zip && rm -f foundry.zip

CMD [ "/usr/local/bin/node", "./resources/app/main.js", "--dataPath=/data" ]

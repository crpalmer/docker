FROM node:24-bookworm

WORKDIR /app

ENV VERSION="13"

COPY start.sh /app/start.sh
COPY FoundryVTT-Linux-13.351.zip /app/foundry-13.zip
COPY FoundryVTT-Linux-14.359.zip /app/foundry-14.zip

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
RUN mkdir foundry-13 && cd foundry-13 && unzip ../foundry-13.zip && rm -f ../foundry-13.zip
RUN mkdir foundry-14 && cd foundry-14 && unzip ../foundry-14.zip && rm -f ../foundry-14.zip

CMD [ "/app/start.sh" ]

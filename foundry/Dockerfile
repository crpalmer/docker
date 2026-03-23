FROM node:24-bookworm

WORKDIR /app

ENV VERSION="stable"

COPY start.sh /app/start.sh
COPY FoundryVTT-Linux-13.351.zip /app/foundry-stable.zip
COPY FoundryVTT-Linux-14.357.zip /app/foundry-test.zip

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
RUN mkdir foundry-stable && cd foundry-stable && unzip ../foundry-stable.zip && rm -f ../foundry-stable.zip
RUN mkdir foundry-test && cd foundry-test && unzip ../foundry-test.zip && rm -f ../foundry-test.zip

CMD [ "/app/start.sh" ]

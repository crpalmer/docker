FROM ubuntu:latest

ENV DISPLAY=:1

# Install the packages we need
RUN apt-get update && apt-get -y install \
	tigervnc-standalone-server \
	supervisor \
	fluxbox \
	novnc \
	nginx

# Install dungeondraft
COPY Dungeondraft-1.2.0.1-Linux64.deb /root/dd.deb
RUN apt-get update && apt-get install -y /root/dd.deb && rm /root/dd.deb

# Configure the services
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY init /root/.fluxbox/init
COPY default /etc/nginx/sites-available/default

CMD ["/usr/bin/supervisord"]


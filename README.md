Docker

Various configurations that for docker.

To build the docker image run:

sudo docker build -t <image-name> .

To use the new docker image in a composed service:

sudo docker compose down
sudo docker compose up -d

To run bash in a container:

sudo docker run -it <container-name> bash

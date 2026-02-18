To start Foundry VTT you must run docker and specify the local port and data directory:

sudo docker run -p 1234:30000 --mount type=bind,src=/tmp/data,dst=/data foundry
(where 1234 is the local port and /tmp/data is the local data directory)

Or create a container for it:

sudo docker create -p 1234:30000 --restart unless-stopped --mount type=bind,src=/tmp/data,dst=/data --name foundry-crpalmer foundry
(where foundry-crpalmer is the name of the container)

and then you can start the container with:

sudo docker start foundry-crpalmer

One you start foundry-crpalmer, it will be run whenever docker starts and restarted if it crashes for some reason.

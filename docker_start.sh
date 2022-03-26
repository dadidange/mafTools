# script to start the docker container. Overwrites old if already exists.
# input data directory before use

sudo docker run -it --name maft \
	-v /home/david/data/:/data \
	-v $(pwd):/workdir maf_tools_image bash


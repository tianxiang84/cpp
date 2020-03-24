# cpp
In host machine:
docker-compose -f dockerCpp/docker-compose.yml build && docker-compose -f dockerCpp/docker-compose.yml run --rm ubuntu_cpp

Now you are in the dev container:
make -f Makefile_toyDll
make (!!! NOTE: oder of the g++ arguments matters !!!)
.bin/toyMain 1 2
exit

Back to the host machine now
docker system prune

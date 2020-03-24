# Example creation and usage of a dynamic library in Linux (.so)

1. In host machine:
Go to the root of this repository.
Build and go into a dev docker container with GNU tool chain installed: docker-compose -f dockerCpp/docker-compose.yml build && docker-compose -f dockerCpp/docker-compose.yml run --rm ubuntu_cpp

2. Now you are in the dev container:
make clean (do cleaning, optional)
make (making use of the dll. !!! NOTE: oder of the g++ arguments matters !!!)
.bin/toyMain 1 2 (try it)
exit (exit the dev container)

3. Back to the host machine now
docker system prune

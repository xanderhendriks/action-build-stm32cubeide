# Container image that runs your code
FROM xanderhendriks/stm32cubeide:4.0

RUN apt-get -y update && \
    apt-get -y install python3

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

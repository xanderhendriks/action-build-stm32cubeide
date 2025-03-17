# Container image that runs your code
FROM xanderhendriks/stm32cubeide:15.0

# The requirements come from the Middlewares\ST\STM32_Secure_Engine\Utilities\KeysAndImages\ directory
# in the sitehive-stm32-sbsfu repo
RUN apt-get -y update && \
    apt-get -y install curl python3 python3-pycryptodome python3-ecdsa python3-pyelftools python3-numpy git && \
    ln -s $(which python3) /usr/bin/python

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

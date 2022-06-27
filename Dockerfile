# Container image that runs your code
FROM xanderhendriks/stm32cubeide:5.0

RUN apt-get -y update && \
    apt-get -y install python3 python3-pip && \
    ln -s $(which python3) /usr/bin/python

# The requirements.txt comes from the Middlewares\ST\STM32_Secure_Engine\Utilities\KeysAndImages\ directory
# in the sitehive-stm32-sbsfu repo
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu:xenial

RUN apt-get update

RUN apt-get -y install curl rsync git

# Using Ubuntu
RUN echo "installing nodejs v6 source list...\n"
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN echo "installing nodejs v6 package...\n"
RUN apt-get install -y nodejs

# build tools for native libraries
RUN echo "installing build essentials...\n"
RUN apt-get install -y build-essential

# install build tools
RUN npm i -g bower@1.8.2
RUN npm i -g gulp@3.9.1


# copy files in the image 
#COPY . /webapp
WORKDIR /webapp

# install dependencies...
#RUN npm i
#RUN bower i


# start container in bash
CMD ["/bin/bash"]

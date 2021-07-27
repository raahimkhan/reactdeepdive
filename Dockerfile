# Pull official base image
FROM ubuntu:18.04

# Copy react folder to container
COPY . .

# Install Node.js (npm comes installed with node)
RUN apt-get update &&\
    apt-get install libatomic1 &&\
    apt-get -y install curl &&\
    curl -sL https://deb.nodesource.com/setup_14.x | bash - &&\
    apt-get -y install nodejs &&\
    ln -s /usr/bin/nodejs /usr/local/bin/node &&\
    # Installing Yarn
    npm install --global yarn &&\
    # Installing packages from package.json
    cd foobar && npm install --silent && npm install axios --save && npm run flow init

# Changing working directory (uncomment if working locally)
# WORKDIR '/foobar'

# To start app (uncomment if working locally)
# CMD ["yarn", "start"]

# terminal commands for local build and run
# tar -czpf react.tar.gz Dockerfile foobar (to create tarball)
# run below commands in a terminal where Dockerfile and foobar folder is present
# to build: docker build -t react .
# to run: docker run -p 3001:3000 react
FROM ubuntu:18.04
RUN apt update
RUN apt install -y git curl
RUN apt install -y npm
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN . graphql-engine
WORKDIR "graphql-engine/console"
RUN npm ci
CMD npm run dev

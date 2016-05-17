# Bower Docker Container
# Base Dockerfile: furdarius/npm-docker
FROM furdarius/npm-docker

MAINTAINER furdarius <getlag@yandex.com>

# Install gulp:
RUN npm install --global bower

# Set up the application directory
VOLUME ["/app"]
WORKDIR /app

# Define default command.
ENTRYPOINT ["bower"]
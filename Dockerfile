# Set the base image
FROM resin/rpi-raspbian:latest

# File Author / Maintainer
MAINTAINER Cyrill Kulka


## BEGIN INSTALLATION

# Install mumble-server
# Manual user creation not required, as 'murmur-server' user is created automatically
RUN apt-get update && apt-get install -y mumble-server && apt-get -y clean

# Copy configuration
COPY files/mumble-server.ini /etc/

# Copy start script
COPY files/start-mumble-server.sh /opt/


## IMAGE CONFIGURATION

# Volume for persistent data
VOLUME /var/lib/mumble-server

# Expose listen port
EXPOSE 64738

# Start mumble-server
CMD ["bash", "/opt/start-mumble-server.sh"]

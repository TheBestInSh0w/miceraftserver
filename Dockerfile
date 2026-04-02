FROM ubuntu:22.04

# Install curl + Java
RUN apt-get update && \
    apt-get install -y curl openjdk-17-jre-headless && \
    apt-get clean

# Copy app files
WORKDIR /app
COPY . /app

# Make start.sh executable
RUN chmod +x start.sh

# Run the server
CMD ["bash", "start.sh"]

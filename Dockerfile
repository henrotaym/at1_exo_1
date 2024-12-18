FROM ubuntu:24.10

# Set working directory
WORKDIR /opt/apps/app

# Download java binaries
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://download.java.net/java/GA/jdk23.0.1/c28985cbf10d4e648e4004050f8781aa/11/GPL/openjdk-23.0.1_linux-x64_bin.tar.gz && \
    tar --extract --verbose --file=openjdk-23.0.1_linux-x64_bin.tar.gz --directory=/usr/local && \
    rm ./openjdk-23.0.1_linux-x64_bin.tar.gz

# Make java binaries globally available
ENV JAVA_HOME="/usr/local/jdk-23.0.1"
ENV PATH="$JAVA_HOME/bin:$PATH"

COPY ./src ./src
COPY ./devops ./devops

CMD ./devops/start.sh

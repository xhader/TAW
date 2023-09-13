FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl openjdk-17-jdk && \
    apt-get clean

# Set the JAVA_HOME environment variable
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64

# Other Docker instructions to set up your Maven project

# Continue from the previous snippet

# Set up Maven
ARG MAVEN_VERSION=3.8.1
ARG USER_HOME_DIR="/root"
ARG MAVEN_HOME="/usr/share/maven"
ARG BASE_URL="https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/${MAVEN_VERSION}"

RUN mkdir -p "${MAVEN_HOME}" "${USER_HOME_DIR}" && \
    curl -fsSL -o /tmp/apache-maven.tar.gz "${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz" && \
    tar -xzf /tmp/apache-maven.tar.gz -C "${MAVEN_HOME}" --strip-components=1 && \
    rm -f /tmp/apache-maven.tar.gz && \
    ln -s "${MAVEN_HOME}/bin/mvn" /usr/bin/mvn

ENV MAVEN_HOME "${MAVEN_HOME}"
ENV MAVEN_CONFIG "${USER_HOME_DIR}/.m2"

# Set up your project
COPY . /app
WORKDIR /app

# Build your project
RUN mvn clean install

# Set the working directory
WORKDIR /app

# Copy the pom.xml file to download dependencies
COPY pom.xml .

# Download dependencies as specified in pom.xml
RUN mvn dependency:go-offline

# Copy the source code (this is your local directory bind)
COPY . .

# Compile and package the application
CMD ["mvn", "spring-boot:run"]
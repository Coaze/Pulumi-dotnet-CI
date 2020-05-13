FROM pulumi/pulumi:v2.1.1

USER root
# install tool for packaging lambda functions
RUN dotnet tool install --tool-path /root/.dotnet Amazon.Lambda.Tools
ENV PATH="/root/.dotnet:${PATH}"
#install zip
RUN apt-get update \
    && apt-get install -y zip \
    && rm -rf /var/lib/apt/lists/*

# Install Pulumi plugins
RUN pulumi plugin install resource aws 2.4.0
RUN pulumi plugin install resource azure 3.3.0

RUN pulumi plugin ls
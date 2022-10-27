FROM pulumi/pulumi:v3.44.2

USER root
# install tool for packaging lambda functions
RUN dotnet tool install --tool-path /root/.dotnet Amazon.Lambda.Tools
ENV PATH="/root/.dotnet:${PATH}"
#install zip
RUN apt-get update \
    && apt-get install -y zip \
    && rm -rf /var/lib/apt/lists/*
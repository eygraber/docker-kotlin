FROM ubuntu:20.04

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get upgrade -y

RUN apt-get install curl bash unzip zip -y

RUN curl -s "https://get.sdkman.io" | bash

RUN source "$HOME/.sdkman/bin/sdkman-init.sh" \
    && sdk install java 11.0.11.hs-adpt \
    && sdk install kotlin 1.5.10 \
    && sdk install kscript

ENV PATH=/root/.sdkman/candidates/java/current/bin:$PATH
ENV PATH=/root/.sdkman/candidates/kotlin/current/bin:$PATH
ENV PATH=/root/.sdkman/candidates/kscript/current/bin:$PATH


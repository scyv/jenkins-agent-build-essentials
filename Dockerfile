FROM jenkins/agent

USER root
RUN apt update && apt-get -y install python3 build-essential unzip graphviz

USER jenkins

RUN curl -Lo dtcw https://doctoolchain.org/dtcw \
 && chmod +x dtcw

USER root
RUN mv ~jenkins/dtcw /usr/bin

USER jenkins
RUN dtcw install doctoolchain


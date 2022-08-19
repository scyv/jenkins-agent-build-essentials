FROM jenkins/agent

USER root
RUN apt update && apt-get -y install python3 build-essential
USER jenkins

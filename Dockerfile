# Based on https://github.com/donutsahoy/ftb_ultreloaded/blob/master/Dockerfile

FROM adoptopenjdk/openjdk8:alpine-jre
LABEL maintainer "jlmcmchl@gmail.com"

RUN apk add -U \
su-exec \
bash \
curl \
iputils \
wget \
git \
nano \
rsync 

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

WORKDIR /minecraft

RUN wget https://api.modpacks.ch/public/modpack/5/96/server/linux
RUN mv linux serverinstall
RUN chmod +x serverinstall
RUN /minecraft/serverinstall 5

ADD /shellscripts/settings.sh /minecraft
ADD /shellscripts/start.sh /minecraft
RUN chmod +x /minecraft/settings.sh
RUN chmod +x /minecraft/start.sh

RUN echo "eula=true" > eula.txt

#ENTRYPOINT /bin/bash
ENTRYPOINT /minecraft/start.sh

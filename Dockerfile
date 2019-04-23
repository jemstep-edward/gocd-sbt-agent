FROM gocd/gocd-agent-ubuntu-18.04:v19.2.0
MAINTAINER Jemstep Dev <dev@jemstep.com>

RUN apt-get -y update && \
        apt-get -y install gnupg2 && \
        echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
        apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
        apt-get -y update && \
        apt-get -y install sbt

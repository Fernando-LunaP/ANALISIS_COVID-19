FROM ubuntu

LABEL author="Fernando Luna"

WORKDIR /root

RUN apt-get -y update && \
    apt-get install -y apt-utils nano unzip curl pip && \
    pip install csvkit

ADD covid_shell.sh /root/covid_shell.sh

ENTRYPOINT ["bash", "covid_shell.sh"]
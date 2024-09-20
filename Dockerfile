FROM ubuntu
RUN apt update
RUN apt -y install curl nano net-tools iputils-ping
RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.13.3-amd64.deb
RUN dpkg -i filebeat-8.13.3-amd64.deb
COPY ./filebeat.yml /etc/filebeat/filebeat.yml
WORKDIR /etc/filebeat
CMD /bin/bash
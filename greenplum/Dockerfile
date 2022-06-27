FROM ubuntu:18.04

RUN apt-get update -y

RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:greenplum/db
RUN apt-get install greenplum-db-6 -y

RUN useradd -m gpadmin && echo "gpadmin:gpadmin" | chpasswd && adduser gpadmin sudo

USER gpadmin




CMD /bin/bash

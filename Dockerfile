FROM ubuntu
MAINTAINER dongs365
RUN apt update && apt upgrade -y
WORKDIR /tmp
EXPOSE 80
CMD ["echo 'HA! HA! HA!'"]

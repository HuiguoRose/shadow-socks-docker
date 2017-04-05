# Set the base image to Ubuntu
FROM ubuntu

################## BEGIN INSTALLATION ######################
RUN apt-get update
#RUN apt-get upgrade -y
#RUN apt-get update && apt-get install -y openssh-server apache2 nano vim htop net-tools
#RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor
RUN apt-get install -y supervisor
RUN apt-get install -y python-pip python-m2crypto
RUN pip install --upgrade pip
RUN pip install shadowsocks


################## CPOY CONFIG FILE ######################
COPY shadowsocks.json /etc/shadowsocks.json
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 80 8000 1080
CMD ["/usr/bin/supervisord"]
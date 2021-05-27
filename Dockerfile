From ubuntu
Run apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get installapache2 -y
RUN apt-get clean
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80

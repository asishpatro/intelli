FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y apache2

CMD ["mv", "/var/www/html/index.html", "/var/www/html/index.html.bkp"]
ADD /home/node/jenkins/workspace/git_proj/asish /var/www/html/asish

ENTRYPOINT apachectl -D FOREGROUND 
ENV name jenkins_proj
EXPOSE 80
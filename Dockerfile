FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y apache2

CMD chmod -R o-rwx /var/www/html/
ADD /home/node/jenkins/workspace/git_proj/asish /var/www/html/asish

ENTRYPOINT apachectl -D FOREGROUND 
ENV name jenkins_proj
EXPOSE 80
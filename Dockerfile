FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y apache2

CMD ["mv", "/var/www/html/index.html", "/var/www/html/index.html.bkp"]
COPY ["/home/node/jenkins/workspace/git_proj/images", "/var/www/html/"]
COPY ["/home/node/jenkins/workspace/git_proj/index.html", "/var/www/html/index.html"]

ENTRYPOINT apachectl -D FOREGROUND 
ENV name jenkins_proj
EXPOSE 80
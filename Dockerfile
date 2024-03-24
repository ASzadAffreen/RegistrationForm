FROM nginx
MAINTAINER devops@AA
COPY . /usr/share/nginx/html
EXPOSE 80
VOLUME /aap/logs

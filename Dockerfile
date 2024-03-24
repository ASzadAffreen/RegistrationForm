FROM nginx
MAINTAINER devops@AA
WORKDIR /app
COPY * /app
EXPOSE 80
VOLUME /aap/logs

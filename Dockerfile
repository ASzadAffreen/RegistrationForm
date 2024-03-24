FROM nginx
MAINTAINER devops@AA
WORKDIR /app
COPY index.html /app
COPY styles.css /app
EXPOSE 80
VOLUME /aap/logs

FROM nginx:1.29.4-alpine

WORKDIR /opt

RUN mkdir html

COPY index.html custom.conf .

RUN mv index.html html && mv custom.conf /etc/nginx/conf.d/

EXPOSE 8000



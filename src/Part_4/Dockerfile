FROM nginx

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY src/mini_server.c /
COPY run.sh /

RUN apt-get update ; \
    apt-get install -y gcc libfcgi-dev spawn-fcgi ; \
    gcc mini_server.c -lfcgi ; \
    chmod +x /run.sh
 
ENTRYPOINT ["./run.sh"]
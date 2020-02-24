FROM nginx
RUN mkdir /etc/pki
RUN mkdir /etc/pki/nginx
RUN mkdir /etc/pki/nginx/private
RUN chmod 700 /etc/pki/nginx
RUN chmod 700 /etc/pki/nginx/private
RUN cd /etc/pki/nginx
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/pki/nginx/private/server.key -out /etc/pki/nginx/server.crt
RUN while :; do sleep 6h & wait $${!}; nginx -s reload; done & nginx -g \"daemon off;\"
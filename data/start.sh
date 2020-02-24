mkdir /etc/pki/nginx
mkdir /etc/pki/nginx/private
chmod 700 /etc/pki/nginx
chmod 700 /etc/pki/nginx/private
cd /etc/pki/nginx
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/pki/nginx/private/server.key -out /etc/pki/nginx/server.crt
while :; do sleep 6h & wait $${!}; nginx -s reload; done & nginx -g \"daemon off;\"
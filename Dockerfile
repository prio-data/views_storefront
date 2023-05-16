FROM nginx:1.24.0
COPY proxies.conf.template /etc/nginx/templates/proxies.conf.template
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/html/index.html

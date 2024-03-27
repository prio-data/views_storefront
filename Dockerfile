FROM nginx:1.25.2
COPY proxies.conf.template /etc/nginx/templates/proxies.conf.template
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www/html/index.html

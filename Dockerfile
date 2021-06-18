FROM python:3.8 as envtpl
RUN pip install envtpl
COPY proxies.conf /proxies.conf.tpl
RUN envtpl -o /proxies.conf /proxies.conf.tpl

FROM openresty/openresty:1.15.8.2-1-alpine
RUN apk update && apk add gettext

COPY default.conf /etc/nginx/conf.d/default.conf
COPY proxies.conf /proxies.conf.tpl

COPY index.html /www/html/index.html

COPY init.sh /init.sh
CMD ["sh","init.sh"]

#!/usr/bin/env sh
set -eu
envsubst '${QUERYSET_MANAGER_URL}'< /proxies.conf.tpl > /etc/nginx/conf.d/default.conf
/usr/local/openresty/bin/openresty -g "daemon off;"

#!/bin/bash

./configure \
--add-module=modules/nginx-sla \
--prefix=/usr/share/nginx \
--conf-path=/etc/nginx/nginx.conf \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--lock-path=/var/lock/nginx.lock \
--pid-path=/run/nginx.pid \
--modules-path=/usr/lib/nginx/modules \
--http-client-body-temp-path=/var/lib/nginx/tmp/body \
--http-fastcgi-temp-path=/var/lib/nginx/tmp/fastcgi \
--http-proxy-temp-path=/var/lib/nginx/tmp/proxy \
--http-scgi-temp-path=/var/lib/nginx/tmp/scgi \
--http-uwsgi-temp-path=/var/lib/nginx/tmp/uwsgi

make
make install
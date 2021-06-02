#!/bin/bash

./configure \
--add-module=modules/nginx-sla \
--prefix=/usr \
--conf-path=/etc/nginx/nginx.conf \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--lock-path=/var/lock/nginx.lock \
--pid-path=/run/nginx.pid \
--modules-path=/usr/lib64/nginx/modules \
--with-http_auth_request_module \
--with-http_ssl_module \
--with-http_v2_module \
--with-http_realip_module \
--with-http_addition_module \
--with-http_xslt_module=dynamic \
#--with-http_image_filter_module=dynamic \
--with-http_geoip_module=dynamic \
--with-http_sub_module \
--with-http_dav_module \
--with-http_flv_module \
--with-http_mp4_module \
--with-http_gunzip_module \
--with-http_gzip_static_module \
--with-http_random_index_module \
--with-http_secure_link_module \
--with-http_degradation_module \
--with-http_slice_module \
--with-http_stub_status_module \
--with-http_perl_module=dynamic \
--with-mail_ssl_module \
--with-stream_ssl_module \
--with-google_perftools_module \
--http-client-body-temp-path=/var/lib/nginx/tmp/body \
--http-fastcgi-temp-path=/var/lib/nginx/tmp/fastcgi \
--http-proxy-temp-path=/var/lib/nginx/tmp/proxy \
--http-scgi-temp-path=/var/lib/nginx/tmp/scgi \
--http-uwsgi-temp-path=/var/lib/nginx/tmp/uwsgi

make
make install

sleep 1

#https://www.nginx.com/resources/wiki/start/topics/examples/systemd/
cp nginx.service /lib/systemd/system/nginx.service

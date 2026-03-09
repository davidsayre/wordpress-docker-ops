# This is included at the top of a server { } vhost

gzip on;
gzip_disable "msie6";
gzip_vary on;
gzip_proxied any;
gzip_comp_level 2;
gzip_buffers 16 8k;
gzip_http_version 1.1;
gzip_types text/plain text/css application/json application/x-javascript text/xml application/xml application/xml+rss text/javascript;

# DJS cms
client_max_body_size 50m;

# FPM fastcgi_read_timeout
fastcgi_read_timeout 90;

# DUP see dxp.d/server_params
#location = /favicon.ico {
#        log_not_found off;
#        access_log off;
#}

location = /robots.txt {
    allow all;
    log_not_found off;
    access_log off;
}
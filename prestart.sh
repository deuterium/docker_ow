#!/bin/bash
sed -i '/listen 80\;/a \ \ \ \ listen 443 ssl;\n\ \ \ \ ssl_certificate\ \ \ \ \ /certs/cert.pem;\n\ \ \ \ ssl_certificate_key\ /certs/key.pem;' /etc/nginx/conf.d/nginx.conf
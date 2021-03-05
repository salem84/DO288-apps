# Use the httpd-parent image as base
FROM quay.io/redhattraining/httpd-parent
LABEL io.openshift.expose-services="8080:http" 
RUN chgrp -R 0 /var/log/httpd /var/run/httpd && \
 chmod -R g=u /var/log/httpd /var/run/httpd
RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf
USER 1001

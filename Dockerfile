FROM busybox
LABEL maintainer "g.rezniczek@sci-design.at"

# Add empty placeholder folders to the image
ADD conf.d/	/etc/nginx/conf.d/
ADD vhost.d/	/etc/nginx/vhost.d/
ADD wwwroot/	/usr/share/nginx/html/

# The 'templates' folder needs to contain the template for jwilder/docker-gen to use
ADD templates/	/etc/docker-gen/templates/

# Add volumes to be made available via volumes_from
VOLUME /etc/nginx/conf.d
VOLUME /etc/nginx/vhost.d
VOLUME /etc/docker-gen/templates
VOLUME /usr/share/nginx/html

# Give an indication what version of the template is included
ENV NGINXPROXY_TEMPLATE_VERSION 0.5.0


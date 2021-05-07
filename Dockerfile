FROM nginx
RUN rm /etc/nginx/conf.d/*
COPY reverse_proxy/nginx.conf /etc/nginx/conf.d/
FROM nginx:latest
COPY ./nginx/nginx.conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /etc/nginx/html/index.html
EXPOSE 80

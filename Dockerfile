FROM nginx

WORKDIR /usr/share/nginx/html/

COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf

ADD site/dist  /usr/share/nginx/html/mirror/ant-design-vue

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
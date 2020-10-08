FROM nginx:alpine

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443

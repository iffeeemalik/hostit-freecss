FROM nginx
WORKDIR /usr/share/nginx/html/
RUN apt-get update && apt-get upgrade -y
COPY . .
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

from nginx 
RUN apt update && apt install net-tools i^routeÉ iputils-ping ssh vim -y
COPY . /var/lib/nginx/html

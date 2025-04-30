from nginx 
RUN apt update && apt install net-tools i^routeÉ iputils-ping ssh vin -y
COPY ./var/lib/nginx/html

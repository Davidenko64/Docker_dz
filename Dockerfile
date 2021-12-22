FROM nginx:latest

WORKDIR /tmp

RUN apt-get update && apt-get install -y \
    git

RUN git clone -b master https://gitlab.com/bliznetz/devops.git && \
    cp -rf devops/2048/* /usr/share/nginx/html && rm -rf devops && /etc/init.d/nginx restart

EXPOSE 80

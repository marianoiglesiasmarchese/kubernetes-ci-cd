FROM nginx:1.19-alpine

# CMD ls -la /usr/share/nginx/html

ADD index.html /usr/share/nginx/html


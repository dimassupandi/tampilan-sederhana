FROM nginx:alpine

# hapus default index nginx
RUN rm -rf /usr/share/nginx/html/*

# copy semua file html + css ke folder html nginx
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

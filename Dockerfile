FROM alpine:3.10
RUN apk add --update mysql-client bash openssh-client && rm -rf /var/cache/apk/*
COPY dump.sh dumptoimport.sh import.sh /mysqldump/
WORKDIR /mysqldump/
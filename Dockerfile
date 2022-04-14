FROM alpine:3.7

# File Author / Maintainer
LABEL authors="majid Rehman <majidbangash138@gmail.com>"

# Update & install required packages

RUN apk add --update nodejs bash git
# Install app dependencies

COPY application /www

RUN cd /www; npm install

WORKDIR /www

# set node env
ENV NODE_ENV production

EXPOSE  8083

# we can also use supervisord etc
CMD npm run start

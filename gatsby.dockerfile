FROM node:alpine

EXPOSE 8000

WORKDIR /

RUN apk update && \
    apk add git && \
    rm -rf /var/cache/apk/*

RUN npm install -g gatsby-cli && gatsby telemetry --disable

RUN mkdir -p /gatsby
WORKDIR /gatsby
VOLUME /gatsby

COPY ./gatsby_entry.sh /
RUN chmod +x /gatsby_entry.sh
ENTRYPOINT ["/gatsby_entry.sh"]
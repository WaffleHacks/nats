FROM nats:2.9.18-alpine

RUN apk add --no-cache bind-tools

COPY ./nats-server.conf /etc/nats/nats-server.conf
COPY ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nats-server", "--config", "/etc/nats/nats-server.conf"]

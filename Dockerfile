FROM rabbitmq:alpine

COPY rabbitmq.config /etc/rabbitmq/

CMD ulimit -n 1024
CMD chown -R rabbitmq:rabbitmq /var/lib/rabbitmq/data
CMD rabbitmq-server $@

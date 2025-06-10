FROM alpine:3.10

ARG YAML     # the benchmarking yaml
ARG BACKEND  # the software backend

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
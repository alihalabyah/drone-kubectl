FROM bitnami/kubectl:1.17.17

COPY run /opt/ali/kubectl/bin/

USER root

RUN apt-get update && apt-get install gettext-base

ENV PATH="/opt/ali/kubectl/bin:$PATH"

ENTRYPOINT ["run"]

CMD ["--help"]

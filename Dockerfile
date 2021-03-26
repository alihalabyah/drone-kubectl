FROM bitnami/kubectl:1.17.17

COPY run /opt/ali/kubectl/bin/

USER root

ENV PATH="/opt/ali/kubectl/bin:$PATH"

ENTRYPOINT ["run"]

CMD ["--help"]

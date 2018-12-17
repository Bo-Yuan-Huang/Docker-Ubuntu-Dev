FROM byhuang/ubuntu-dev:base

WORKDIR /app

COPY . /app

RUN /bin/bash -c "source setup.sh"

ENTRYPOINT ["/app/start.sh"]

CMD ["/bin/bash"]


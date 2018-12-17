FROM byhuang/ubuntu-dev:base

WORKDIR /app

COPY . /app

RUN /bin/bash -c "source setup.sh"

ENTRYPOINT ["/app/unpack.exp", "/app/start_ssh.sh"]

CMD ["/bin/bash"]


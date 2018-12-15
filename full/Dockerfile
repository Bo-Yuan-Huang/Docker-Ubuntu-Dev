FROM byhuang/ubuntu-dev:base

WORKDIR /app

COPY . /app

RUN /bin/bash -c "source setup.sh"

ENTRYPOINT ["service", "ssh", "start"]

CMD ["/bin/bash"]


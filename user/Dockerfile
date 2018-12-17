FROM byhuang/ubuntu-dev:full

WORKDIR /app

COPY . /app

RUN /bin/bash -c "source setup.sh"

ENTRYPOINT ["service", "ssh", "start"]

CMD ["ifconfig; /bin/bash"]


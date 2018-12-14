FROM ubuntu

WORKDIR /app

COPY . /app

RUN /bin/bash -c "source setup.sh"

CMD ["/bin/bash"]


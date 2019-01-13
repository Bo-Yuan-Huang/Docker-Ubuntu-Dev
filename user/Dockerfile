FROM byhuang/ubuntu-dev:base

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install --yes \
    expect \
    && rm -rf /var/lib/apt/lists/*

# add user
ENV USER_NAME byhuang
RUN groupadd -r $USER_NAME && useradd --create-home -r -g $USER_NAME $USER_NAME
RUN adduser $USER_NAME sudo

# personalization
WORKDIR /home/$USER_NAME
COPY vimrc .vimrc
COPY tmux.conf .tmux.conf
COPY cscope_maps.vim .cscope_maps.vim
COPY themes/ .themes/
RUN git config --global user.name "Bo-Yuan Huang"
RUN git config --global user.email "byhuang1992@gmail.com"

# start
COPY start.sh .start.sh
ENTRYPOINT ["/home/byhuang/.start.sh"]

CMD ["/bin/bash"]


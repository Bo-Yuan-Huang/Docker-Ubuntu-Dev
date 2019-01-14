FROM byhuang/ubuntu-dev:base

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install --yes \
    expect \
    && rm -rf /var/lib/apt/lists/*

# add user
ENV USER_NAME byhuang
COPY adduser_it.exp .adduser_it.exp
run ./.adduser_it.exp

# personalization
WORKDIR /home/$USER_NAME
COPY vimrc .vimrc
COPY tmux.conf .tmux.conf
COPY cscope_maps.vim .cscope_maps.vim
COPY themes/ .themes/
RUN git config --global user.name "Bo-Yuan Huang"
RUN git config --global user.email "byhuang1992@gmail.com"
RUN echo "alias l=ls" >> .bashrc

# start
COPY start.sh .start.sh
ENTRYPOINT ["/home/byhuang/.start.sh"]

CMD ["/bin/bash"]


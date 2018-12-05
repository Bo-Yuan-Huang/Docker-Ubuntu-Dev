##
## environment
##
apt update --yes
apt install --yes wget
apt install --yes flex 
apt install --yes bison 
apt install --yes build-essential 
apt install --yes libboost-all-dev 
apt install --yes cmake
apt install --yes tmux
apt install --yes vim
apt install --yes clang-format
apt install --yes exuberant-ctags
apt install --yes cscope
apt install --yes net-tools
apt install --yes openssh-server
apt install --yes htop

DEBIAN_FRONTEND=noninteractive apt install --yes git-all

##
## server-only
##
service ssh start
unminimize

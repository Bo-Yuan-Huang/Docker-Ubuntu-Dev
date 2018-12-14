[![Build Status](https://travis-ci.org/Bo-Yuan-Huang/Docker-Ubuntu-Dev.svg?branch=master)](https://travis-ci.org/Bo-Yuan-Huang/Docker-Ubuntu-Dev)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/4f015e7197484cef87c6b2718440dd11)](https://app.codacy.com/app/Bo-Yuan-Huang/Docker-VM?utm_source=github.com&utm_medium=referral&utm_content=Bo-Yuan-Huang/Docker-VM&utm_campaign=Badge_Grade_Dashboard)

## About

This repo demonstrates the use of Docker to efficiently create, run, and deploy an Linux image for personal development. 
The personalization can be modified accordingly based on the application and environment requirements. 

### Get the image of the customized Linux-Dev

Create/build a clean docker image from ubuntu:bionic with packages in ``setup.sh`` installed. 
``` bash
cd base
docker build -t local-base .
```

### Create a volume (shared storage)

*Volume* can be mounted as a shared storage. It can be shared with multiple containers. 
``` bash
docker volume build dev-volume
```

### Initiate the container and activate the server service

Run the container based on the image with the volume mounted. 
``` bash
docker run -it --name dev-cont -v dev-volume:/data local-base
```

To initiate a container with support for random address (e.g., gdb)
``` bash
docker run -it --cap-add=SYS_PTRACE --security-opt seccomp=unconfined local-base
```

The base Ubuntu image does not contain packages required for remote log-in. 
To enable remote access and start ssh server:
``` bash
unminimize
service ssh start
```

### User specific for remote log-in

Create an user account and personalize
``` bash
adduser [user name]
adduser [user name] sudo 
```

Leave the container running in backgroud
``` bash
ifconfig
<C-p> <C-q>
```

Now you should be able to log into the vm as a user. 
``` bash
ssh [user name]@[host]                      # host can be found via ifconfig
```

My personalization is defined in ``/customize/personalize.sh``.
``` bash
source /app/personalize.sh                  # configure vim, tmux, cscope, git, etc.
sudo dpkg-reconfigure tzdata                # reconfigure time zone if desired
source ~/.bash_it/install.sh                # install bash theme (themes in ~/.bash_it)
```

### Notes
If you have duplicated hosts (IP being used before)
``` bash
ssh-keygen -R <host>                        # if duplicated hosts
```


[![Codacy Badge](https://api.codacy.com/project/badge/Grade/4f015e7197484cef87c6b2718440dd11)](https://app.codacy.com/app/Bo-Yuan-Huang/Docker-VM?utm_source=github.com&utm_medium=referral&utm_content=Bo-Yuan-Huang/Docker-VM&utm_campaign=Badge_Grade_Dashboard)

# About

This repo demonstrates the use of Docker to efficiently create, run, and deploy an Linux image for personal development. 
The personalization can be modified accordingly based on the application and environment requirements. 

### Get the image of the customized Linux-Dev

Create/build a clean docker image from ubuntu:latest with packages in ``setup.sh`` installed. 
``` bash
docker build -t ubuntu/dev .
```

### Create a volume (shared storage)

*Volume* can be mounted as a shared storage. It can be shared with multiple containers. 
``` bash
docker volume build dev-volume
```

### Initiate the container and activate the server service.

Run the container based on the image with the volume mounted. 
``` bash
docker run -it --name dev-cont -v dev-volume:/data ubuntu/dev
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
ssh-keygen -R <host>                        # if duplicated hosts
source /app/personalize.sh                  # [optional] configure files, e.g., gitconfig
sudo dpkg-reconfigure tzdata                # [optional] reconfigure time zone if needed
```

### Other notes

To initiate a container with support for random address (e.g., gdb)
``` bash
docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it [image]
```

To initiate a container per the image as the user
``` bash
docker run -it --name [container] --user [user name] [image]
```


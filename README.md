[![Codacy Badge](https://api.codacy.com/project/badge/Grade/4f015e7197484cef87c6b2718440dd11)](https://app.codacy.com/app/Bo-Yuan-Huang/Docker-VM?utm_source=github.com&utm_medium=referral&utm_content=Bo-Yuan-Huang/Docker-VM&utm_campaign=Badge_Grade_Dashboard)

### Set up a new VM

Create a clean docker image
``` bash
docker build -t vm/bionic:clean .
docker run -it --name [container] vm/bionic:clean # temporary image
```

Install commonly used packages
``` bash
source setup.sh                             # prompt for unminimize (user log-in) 
```
  
If you want to create an image for the VM (root-only)
``` bash
<C-d>                                       # detach the container if not already
docker commit [container] [image]           # create an image based on the current VM state
docker rm [container]                       # clean container dependency
docker image rm vm/bionic:clean             # remove temporary image
docker run -it --name [container] [image]   # create new container using the created image
```

Create an user account
``` bash
adduser [user name]
adduser [user name] sudo
service ssh start
```

Leave the VM running in background
``` bash
<C-p> <C-q>
```
Now you should be able to log into the vm as a user. 
``` bash
ssh [user name]@[host]                      # host can be found via ifconfig
ssh-keygen -R <host>                        # if duplicated hosts
source /app/personalize.sh                  # [optional] configure files, e.g., gitconfig
sudo dpkg-reconfigure tzdata                # [optional] reconfigure time zone if needed
```

To initiate a container per the image as the user
``` bash
docker run -it --name [container] --user [user name] [image]
```

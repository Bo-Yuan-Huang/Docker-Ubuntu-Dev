### Set up a new VM
1. Create a clean docker image
  ``` bash
  docker build -t vm/bionic:clean .
  docker run -it --name [container name] vm/bionic:clean 
  ```

2. Install commonly used packages
  ``` bash
  source setup.sh
  ```
  
  If you want to create an image for the VM (root-only)
  ``` bash
  <C-d>                                       # detach the container if not already
  docker commit [image name] [container name] # create an image based on the current VM state
  docker attach [container name]              # attach again for the next step
  ```

3. Create an user account
  ``` bash
  adduser [user name]
  adduser [user name] sudo
  ```
 
4. Leave the VM running in background
  ``` bash
  <C-p> <C-q>
  ```

  Now you should be able to log into the vm as a user. 
  ``` bash
  ssh [user name]@[address]                   # address can be found via ifconfig
  unminimize                                  # [optional] restore some user-only packages
  source /app/personalize.sh                  # [optional] configure files, e.g., gitconfig
  ```

  * To initiate a container per the image as the user
  ``` bash
  docker run -it -name [container name] --user [user name] [image name]
  ```

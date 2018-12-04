### Set up a new VM
1. Create a clean docker image.
  ``` bash
  docker build -t vm/bionic:clean .
  docker run -it --name vm-clean vm/bionic:clean 
  ```

2. Install widely used packages.
  ``` bash
  source setup.sh
  ```

3. Create user account
  ``` bash
  adduser username 
  adduser username sudo
  ```
 
4. Leave the VM running in background
  ``` bash
  <C-p> <C-q>
  ```

Now you should be able to log into the vm as a user. 


### [optional] Create an image for the vm
To create a working image for the VM, you have to detach the container first (`<C-d>`).

* Create an image for the VM as a root
  ``` bash
  docker commit [image name] vm-clean
  ```

* Create an image for the VM as an user
  ``` bash
  docker run -it --name vm-user --user [user name] vm-clean
  <C-d>
  docker commit [image name] vm-user
  ```

* To initiate a container using the image
  ``` bash
  docker run -it -name [vm name] --user [user name] [image name]
  ```


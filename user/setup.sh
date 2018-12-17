#!/bin/bash
DEBIAN_FRONTEND=noninteractive apt install --yes expect
##
## add user
##
/app/adduser_it.exp
adduser byhuang sudo

##
## personalize
##
/app/personalize.sh


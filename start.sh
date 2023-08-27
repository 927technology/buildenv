#!/bin/bash

#variables
user=`whoami`
uid=`id -u ${user}`
image=927technology/buildenv
name=buildenv

#main
docker run 	                  \
  --hostname ${name}              \
  -it                             \
  --name ${name}                  \
  --rm                            \
  -v /etc/passwd:/etc/passwd      \
  -v /home:/home                  \
  -u ${uid}                       \
  ${image}                        \
  /bin/bash

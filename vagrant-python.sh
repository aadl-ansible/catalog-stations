#!/bin/bash
if ! [ -e /usr/bin/python2.7 ]; then
  sudo apt-get update
  sudo apt-get -y install python2.7
fi
if ! [ -e /usr/bin/python ]; then
  sudo ln -s /usr/bin/python2.7 /usr/bin/python
fi
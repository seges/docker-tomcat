#!/bin/bash

if [ ! -z "$1" ]; then
  version=":$1"
else
  version=":7-jre7"
fi

docker push seges/tomcat

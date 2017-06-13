#!/bin/bash

echo -e "Building Zookeeper docker image..."

function build_img() {
  local prefix=$1
  local imgname=$2
  local img="${prefix}/${imgname}"

  echo -e "Building docker image ${img}..."
  docker build -t $img .
}

IMGPREFIX=bwv988
build_img $IMGPREFIX zookeeper

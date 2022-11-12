#!/bin/sh
docker run \
  --rm \
  -itd \
  --name my_jenkins \
  my_jenkins:v1.0.0 \
  bash

#!/bin/bash

build() {
  RUBY_VERSION=$2 erb Dockerfile.erb > Dockerfile
  tar -czh . | docker build -t instedd/nginx-rails-$1 -
  rm Dockerfile
}


build 20 2.0.0-p598
build 21 2.1.5

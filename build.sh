#!/bin/bash

build() {
  rm -rf ruby-$1
  mkdir ruby-$1
  cp -r files ruby-$1/files
  FROM_IMAGE=$2 erb Dockerfile.erb > ruby-$1/Dockerfile
}

build 1.9 instedd/ruby:1.9
build 2.0 ruby:2.0
build 2.1 ruby:2.1
build 2.2 ruby:2.2

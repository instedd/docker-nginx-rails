#!/bin/bash

build() {
  rm -rf ruby-$1
  mkdir ruby-$1
  cp -r files ruby-$1/files
  RUBY_VERSION=$1 erb Dockerfile.erb > ruby-$1/Dockerfile
}


build 2.0
build 2.1
build 2.2

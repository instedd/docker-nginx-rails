#!/bin/bash

dockerfile-for() {
  rm -rf ruby-$1
  mkdir ruby-$1
  cp -r files ruby-$1/files
  FROM_IMAGE=$2 erb Dockerfile.erb > ruby-$1/Dockerfile
}

dockerfile-for 1.9 instedd/ruby:1.9
dockerfile-for 2.0 ruby:2.0
dockerfile-for 2.1 ruby:2.1
dockerfile-for 2.2 ruby:2.2
dockerfile-for 2.3 ruby:2.3

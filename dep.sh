#!/usr/bin/env bash

cores=$(cat /proc/cpuinfo | grep processor | wc -l)

bundle install -j ${cores}
bundle update --all -j ${cores}

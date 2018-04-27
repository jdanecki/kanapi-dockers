# KaNaPi-dockers repository 

This repository is part of KaNaPi project

# KaNaPi project

Main goal of this project is to create educational operating system based on Linux kernel
and free software for use at home.

Current phase: Beta

Versions: 
* in development - v0.9
* released - v0.8

License: GPL v.3

Look into doc directory to learn how to build KaNaPi.
More details on http://kanapi.ga

Author: jacek.m.danecki@gmail.com

## Docker images

* SBS image  - https://hub.docker.com/r/kanapi/kanapi-sbs  tag:4
* BBS image  - https://hub.docker.com/r/kanapi/kanapi-bbs  tag:8
* CLI image  - https://hub.docker.com/r/kanapi/kanapi-cli  tag:11
* X11 image  - https://hub.docker.com/r/kanapi/kanapi-x11  tag:5
* GUI image  - https://hub.docker.com/r/kanapi/kanapi-gui  tag:4
* APPS image - https://hub.docker.com/r/kanapi/kanapi-apps tag:6

## Docker images for CI

* cli-lib:5
* x11-lib:6
* apps-x11:2
* gtk:5
* qt:5
* apps-gtk:3
* apps-qt:3
* apps-gui:2

## Image description

* Sbs - small build system: kanapi_system/kanapi-sbs
* Bbs - base build system, built on top of Sbs: kanapi_system/kanapi-bbs
* Cli - command line tools built on top of Bbs: kanapi_system/kanapi-cli
* X11 - X11 support, libs, apps, built on top of Cli: kanapi_system/kanapi-x11
* Gui - Gtk2/3 and Qt support, libs built on top of X11: kanapi_system/kanapi-gui
* Apps - Applications and libs built on top Gui: kanapi_system/kanapi-apps

## CI systems using docker containers

* Shippable 
  - build cli docker image from BBS docker image from https://hub.docker.com/r/kanapi/kanapi-bbs
  - docker builds: https://app.shippable.com/github/jdanecki/kanapi-dockers/dashboard
* Travis 
  - build SBS from sbs-docker tarball and BBS from SBS docker image, https://travis-ci.org/jdanecki/kanapi
  - docker builds: https://travis-ci.org/jdanecki/kanapi-dockers/builds/355665885
* SemaphoreCI
  - build cli docker image from BBS docker image from https://hub.docker.com/r/kanapi/kanapi-bbs
  - build X11 docker image from cli docker image from https://hub.docker.com/r/kanapi/kanapi-cli
  - docker builds: https://semaphoreci.com/jdanecki/kanapi-dockers/

## Repositories

* Main KaNaPi repository: https://github.com/jdanecki/kanapi
* KaNaPi CI tests: https://github.com/jdanecki/kanapi-ci
* CI tests: https://github.com/jdanecki/ci-tests
* KaNaPi CI tests on shippable only: https://github.com/jdanecki/kanapi-shippable
* KaNaPi docker tests: https://github.com/jdanecki/kanapi-dockers


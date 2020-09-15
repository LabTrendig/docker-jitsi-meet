# Jitsi Meet on Docker

    labtrendig
    fork	git@github.com:LabTrendig/docker-jitsi-meet.git (fetch)
    fork	git@github.com:LabTrendig/docker-jitsi-meet.git (push)
    
    jitsi
    origin	https://github.com/jitsi/docker-jitsi-meet.git (fetch)
    origin	https://github.com/jitsi/docker-jitsi-meet.git (push)

## 1: git pull origin in master -> Jitsi

## 2: git checkout trendig-jitsi

## 3: git merge master

## 4: git push fork -> Labtrendig


![](resources/jitsi-docker.png)

[Jitsi](https://jitsi.org/) is a set of Open Source projects that allows you to easily build and deploy secure videoconferencing solutions.

[Jitsi Meet](https://jitsi.org/jitsi-meet/) is a fully encrypted, 100% Open Source video conferencing solution that you can use all day, every day, for free — with no account needed.

This repository contains the necessary tools to run a Jitsi Meet stack on [Docker](https://www.docker.com) using [Docker Compose](https://docs.docker.com/compose/).

## Installation

The installation manual is available [here](https://jitsi.github.io/handbook/docs/devops-guide/devops-guide-docker).

## TODO

* Support container replicas (where applicable).
* TURN server.


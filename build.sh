#!/bin/bash

docker pull docker.io/library/debian:stretch

docker build \
	--tag=docker.io/oprdyn/debian:stretch \
	--network=proxy \
	.

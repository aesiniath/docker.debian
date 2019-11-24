#!/bin/bash

docker pull docker.io/library/debian:buster

docker build \
	--tag=docker.io/oprdyn/debian:buster \
	--network=proxy \
	.

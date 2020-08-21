#!/bin/bash

podman pull docker.io/library/debian:buster

podman build \
	--tag=docker.io/aesiniath/debian:buster \
	.

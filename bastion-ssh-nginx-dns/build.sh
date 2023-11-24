#!/bin/bash
docker build -t ssh .
docker build -t dns-server -f Dockerfile_dns .

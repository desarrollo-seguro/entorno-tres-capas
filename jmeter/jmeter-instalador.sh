#!/bin/bash
wget https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.tgz
set -e
sha512sum --check apache-jmeter-5.6.2.tgz-sha512
tar -xvf apache-jmeter-5.6.2.tgz

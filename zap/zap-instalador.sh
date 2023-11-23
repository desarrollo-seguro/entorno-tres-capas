#!/bin/bash
wget https://github.com/zaproxy/zaproxy/releases/download/v2.14.0/ZAP_2_14_0_unix.sh
sudo yum install -y java-11-openjdk
set -e
sha256sum --check ZAP_2_14_0_unix.sh.sha256
chmod +x ./ZAP_2_14_0_unix.sh
sudo ./ZAP_2_14_0_unix.sh

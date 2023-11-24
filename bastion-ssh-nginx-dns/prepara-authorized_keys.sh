#!/bin/bash
sudo cp ~/.ssh/id_ed25519.pub authorized_keys
sudo chmod 600 authorized_keys
sudo chown 4096:4096 authorized_keys

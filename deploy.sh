#!/bin/bash

set -o errexit

cd /home/holoapi || { echo "No directory found"; exit 1; }

git pull

npm install

npm run migrate

pm2 reload all

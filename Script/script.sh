#!/bin/bash

DATE=`date +%Y-%m-%d-%H`

cd ..
cd Docker

sudo docker build -t node.js-image:$DATE .

sudo docker run -e PORT=3000 -p3000:3000 node.js-image:$DATE

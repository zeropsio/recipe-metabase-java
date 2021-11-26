#!/bin/bash

set -e

if [ -f "run" ]; then
    java -jar metabase.jar
fi

apt update
sudo apt install default-jre -y
curl https://downloads.metabase.com/v0.41.2/metabase.jar
touch run
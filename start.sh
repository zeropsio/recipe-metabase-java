#!/bin/bash

set -e

apt update
sudo apt install default-jre -y

if [ -f "run" ]; then
    java -jar metabase.jar
fi

touch run
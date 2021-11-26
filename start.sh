#!/bin/bash

set -e

if [ ! -f "run" ]; then
    apt update
    sudo apt install default-jre -y
fi

touch run

java -jar metabase.jar
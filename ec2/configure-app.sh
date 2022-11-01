#!/bin/bash

set -e

git clone https://github.com/Human-Beta/test-serverless.git
cd test-serverless

chmod +x gradlew
chmod +x gradlew.bat

ls -l

./gradlew clean assemble

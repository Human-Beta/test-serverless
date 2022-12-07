#!/bin/bash

export SSH_KEY=serverless.pem
export USER=ubuntu
export REPO=https://github.com/Human-Beta/test-serverless.git
#TODO: this is prod host. I need to get the HOST from serverless.yml depends on stage
export HOST=3.212.223.26
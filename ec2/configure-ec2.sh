#!/bin/bash

set -e

PARENT_FOLDER=$(dirname $(realpath $0))

ssh -i $SSH_KEY -o StrictHostKeyChecking=no $USER@$HOST "echo configuring an EC2 instance..."

ssh -i $SSH_KEY $USER@$HOST "sudo apt update && sudo apt upgrade -y"

ssh -i $SSH_KEY $USER@$HOST "echo  'Y' | sudo apt install docker.io"

# TODO: remove from prod
ssh -i $SSH_KEY $USER@$HOST "rm -rf test-serverless"

ssh -i $SSH_KEY $USER@$HOST "bash -s" < $PARENT_FOLDER/configure-app.sh

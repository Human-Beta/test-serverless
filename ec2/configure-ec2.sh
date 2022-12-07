#!/bin/bash

set -e

# this needs to be here to add host to the ~/.ssh/known_hosts
ssh -i $SSH_KEY -o StrictHostKeyChecking=no $USER@$HOST "echo configuring the EC2 instance..."

ssh -i $SSH_KEY $USER@$HOST "bash -s" < ./ec2/env.sh

ssh -i $SSH_KEY $USER@$HOST "sudo apt update && sudo apt upgrade -y"

ssh -i $SSH_KEY $USER@$HOST "echo 'Y' | sudo apt install docker.io"

# TODO: remove from prod
#ssh -i $SSH_KEY $USER@$HOST "rm -rf test-serverless"
#ssh -i $SSH_KEY $USER@$HOST "sudo docker rm test-serverless; sudo docker rmi test-serverless"

./ec2/configure-app.sh

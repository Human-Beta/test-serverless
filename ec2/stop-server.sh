#!/bin/bash

ssh -i $SSH_KEY $USER@$HOST "cd test-serverless; ./docker/stop.sh"
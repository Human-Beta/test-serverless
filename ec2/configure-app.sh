#!/bin/bash

ssh -i $SSH_KEY $USER@$HOST "
git clone $REPO;
cd test-serverless;

chmod +x docker/*;
"
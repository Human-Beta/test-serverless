#!/bin/bash

ssh -i $SSH_KEY $USER@$HOST "./docker/stop.sh"
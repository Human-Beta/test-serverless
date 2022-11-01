#!/bin/bash -l

set -e

parent_folder=$(dirname $(realpath $0))

$parent_folder/stop.sh
$parent_folder/start.sh

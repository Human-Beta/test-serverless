#!/bin/bash

set -e

. ./scripts/env.sh

#sls remove --stage prod
#
#sls deploy --stage prod --verbose

./ec2/configure-ec2.sh

./ec2/init-server.sh

echo "You can test an access to the server by the url: http://$HOST/hello?name=Nikita123"
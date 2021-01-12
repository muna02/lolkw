#!/bin/bash

POOL=asia.sparkpool.com:3333
WALLET=0x21f6c5cb2e1c8230126a302f675e3869319476dc
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Asia

cd "$(dirname "$0")"

chmod +x ./gucci && ./gucci --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@

#!/bin/bash

POOL=asia1.ethermine.org:5555
WALLET=0x21f6c5cb2e1c8230126a302f675e3869319476dc
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-Asia

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETHASH --pool $POOL --user $WALLET.$WORKER --tls 1 $@

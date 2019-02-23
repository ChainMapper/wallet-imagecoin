#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
addnode=23.101.61.34
addnode=79.135.200.25:6998
addnode=178.46.153.242:6998
addnode=[2404:9400:10fc:a013::5]:6998
addnode=[2001:0:9d38:78cf:2cbe:c268:373d:48ef]:6998
addnode=[2002:96a5:c1e1::96a5:c1e1]:6998
addnode=87.98.216.12:6998
maxconnetions=50
zmqpubhashblock=tcp://*:5555
EOF
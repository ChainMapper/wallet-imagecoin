#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
maxconnetions=50
addnode=23.101.61.34
EOF
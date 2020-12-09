#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=6666
txindex=1
addnode=185.162.248.212:6998
addnode=216.155.132.188:6998
addnode=161.97.120.90:6998
addnode=185.162.248.212:6998
addnode=[2a03:4000:1a:699::1]:6998
addnode=45.32.205.209:6998
addnode=66.42.99.156:6998
maxconnetions=50
zmqpubhashblock=tcp://*:5555
EOF
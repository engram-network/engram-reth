#!/bin/bash

reth node \
        --datadir=/mnt/volume_syd1_01/rust-engram/rethdata \
        --chain=/mnt/volume_syd1_01/tokio-docker/custom_config_data/genesis.json \
        --http \
        --http.port=8545 \
        --http.addr=0.0.0.0 \
        --http.corsdomain=* \
        --http.api=admin,debug,eth,net,trace,txpool,web3,rpc,reth,ots \
        --ws \
        --ws.addr=0.0.0.0 \
        --ws.port=8546 \
        --ws.api=admin,debug,eth,net,trace,txpool,web3,rpc,reth,ots \
        --ws.origins=* \
        --ipcdisable \
        --discovery.port=30303 \
        --port=30303 \
        --identity=reth-paradigm \
        --nat=extip:170.64.171.158 \
        --authrpc.port=8551 \
        --authrpc.jwtsecret=/mnt/volume_syd1_01/tokio-docker/custom_config_data/jwtsecret \
        --authrpc.addr=0.0.0.0 \
        --metrics=0.0.0.0:9090 \
        --txpool.pending_max_count=10000 \
        --txpool.pending_max_size=20 \
        --txpool.queued_max_count=10000 \
        --txpool.queued_max_size=20 \
        --bootnodes="enode://0468419abd5d8a4219616872a94f8c6b8fb3ea6e787280a5a3e028ae9f82c8d8546a9476221b9f593b7aab01e938efceb04fb44e80110804cd8179ab045757cb@147.75.46.253:30303?discport=0" \
        --trusted-peers="enode://0468419abd5d8a4219616872a94f8c6b8fb3ea6e787280a5a3e028ae9f82c8d8546a9476221b9f593b7aab01e938efceb04fb44e80110804cd8179ab045757cb@147.75.46.253:30303?discport=0" \
        > ./logs/reth1.log &
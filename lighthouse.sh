#!/bin/bash

nohup lighthouse bn \
          --http \
          --eth1 \
          --gui \
          --staking \
          --http-address=127.0.0.1 \
          --http-allow-sync-stalled \
          --subscribe-all-subnets \
          --http-allow-origin=* \
          --eth1-endpoints "http://127.0.0.1:8545" \
          --execution-endpoints "http://127.0.0.1:8551" \
          --genesis-backfill \
          --http-port=5052 \
          --enr-address 170.64.171.158 \
          --metrics \
          --metrics-address=127.0.0.1 \
          --metrics-allow-origin=* \
          --metrics-port=5054 \
          --enr-udp-port=9000 \
          --enr-tcp-port=9000 \
          --discovery-port=9000 \
          --port=9000 \
          --target-peers 400 \
          --logfile-max-number 5 \
          --logfile-max-size 200 \
          --logfile-compress \
          --testnet-dir "/mnt/volume_syd1_01/tokio-docker/custom_config_data" \
          --datadir "/mnt/volume_syd1_01/rust-engram/beacon" \
          --jwt-secrets="/mnt/volume_syd1_01/tokio-docker/custom_config_data/jwtsecret" \
          --boot-nodes="enr:-Ly4QIWlxr4e4g0g826ryl0DZdL25X9HIJ9tjg8gNzpkElRsEas0haN0s7CKb3ywdy_luKde3Bz-NWDzjr2s4g73JAtFh2F0dG5ldHOI__________-EZXRoMpCcTpSPQAABMP__________gmlkgnY0gmlwhJNLLv2Jc2VjcDI1NmsxoQLuRlalLWlE3tBJ6UnBpBncr6PolNC3pIjAV3f3L9P4fIhzeW5jbmV0cw-DdGNwgiMpg3VkcIIjKQ,enr:-Ly4QEcEwn9xcogpNYBMyGT1s3cVd-9OLPsgG8qHJCwt4xiKWUcKfkbNSZbWFnr8BzstF4zF2bcnzVVZ5SGt3gMd_BtFh2F0dG5ldHOI__________-EZXRoMpCcTpSPQAABMP__________gmlkgnY0gmlwhJNLLv2Jc2VjcDI1NmsxoQMba8i8sHnBQlX6YC0p7bCoStMx2wUTzH4xfnmNxz_ad4hzeW5jbmV0cw-DdGNwgiMog3VkcIIjKA" \
          > /mnt/volume_syd1_01/rust-engram/logs/light.log &
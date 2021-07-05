#!/bin/bash

principal=$(curl -q -s api.ipify.org)

aws ec2 authorize-security-group-ingress \
    --group-id GRUPO-AQUI \
    --protocol tcp \
    --port 1433 \
    --cidr $principal/32

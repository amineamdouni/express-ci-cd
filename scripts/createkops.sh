#!/bin/bash

kops create cluster --name kubevpro.unikodetn.com --state s3://test-express-app --zones us-east-1a,us-east-1b --node-count 2 --node-size t2.medium --master-size t2.medium --dns-zone kubevpro.unikodetn.com --node-volume-size 8 --master-volume-size 8   --target terraform --out ./terraform
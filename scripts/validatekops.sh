#!/bin/bash

# Cluster name and other configurations
CLUSTER_NAME="kubevpro.unikodetn.com"
TIMEOUT=900  # 15 minutes
INTERVAL=30  # Check every 30 seconds

# Initialize a timer
end=$((SECONDS+TIMEOUT))

# Loop to check cluster status
while [ $SECONDS -lt $end ]; do
    # Check cluster status
    STATUS=$(kops validate cluster --name $CLUSTER_NAME --state s3://test-express-app | grep "is ready" || true)

    # Check if the status contains 'is ready'
    if [[ $STATUS == *"is ready"* ]]; then
        echo "Cluster is ready."
        exit 0
    fi

    echo "Waiting for the cluster to become ready..."
    sleep $INTERVAL
done

echo "Cluster did not become ready within $TIMEOUT seconds."
exit 1

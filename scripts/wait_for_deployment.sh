#!/bin/bash

# Kubernetes deployment and namespace
DEPLOYMENT_NAME="express-app-deployment"
NAMESPACE="default"
TIMEOUT=900  # 15 minutes

# Wait for the deployment to become ready
echo "Waiting for deployment \"$DEPLOYMENT_NAME\" to become ready..."
kubectl wait --for=condition=available --timeout=${TIMEOUT}s deployment/${DEPLOYMENT_NAME} -n ${NAMESPACE}

# Check if the wait command was successful
if [ $? -eq 0 ]; then
    echo "Deployment is ready."
    exit 0
else
    echo "Deployment did not become ready within $TIMEOUT seconds."
    exit 1
fi

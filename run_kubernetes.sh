#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=rajpurp/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prakashproject --image=$dockerpath --port=80 --labels app=prakashproject


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward prakashproject 8000:80
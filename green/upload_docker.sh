#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=test_green_image

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username spacegeekops
docker tag test_green_image spacegeekops/test_green_image
# Step 3:
# Push image to a docker repository
docker push spacegeekops/test_green_image

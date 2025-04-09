#!/bin/bash

# Define variables
CUDNN_VERSION="8.9.7"
CUDA_VERSION="12"
UBUNTU_VERSION="20.04"  # Change to "22.04" if using Ubuntu 22.04
ARCHITECTURE="x86_64"
CUDNN_DEB="cudnn-local-repo-ubuntu${UBUNTU_VERSION}-${CUDNN_VERSION}_1.0-1_${ARCHITECTURE}.deb"
CUDNN_URL="https://developer.download.nvidia.com/compute/redist/cudnn/v${CUDNN_VERSION}/local_installers/${CUDA_VERSION}/${CUDNN_DEB}"

# Update package lists
sudo apt-get update

# Install dependencies
sudo apt-get install -y wget curl gnupg lsb-release

# Download cuDNN
wget $CUDNN_URL -O /tmp/$CUDNN_DEB

# Install cuDNN
sudo dpkg -i /tmp/$CUDNN_DEB
sudo cp /var/cudnn-local-repo-ubuntu${UBUNTU_VERSION}-${CUDNN_VERSION}/cudnn-local-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update

# Install cuDNN libraries
sudo apt-get install -y libcudnn8 libcudnn8-dev

# Clean up
sudo apt autoremove -y
rm /tmp/$CUDNN_DEB

# Verify installation
cat /usr/include/cudnn_version.h | grep CUDNN_MAJOR -A 2

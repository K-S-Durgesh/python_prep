#!/bin/bash

###################################
# Author: K S Durgesh
# Subject: Connect to EC2 instance 
# Date: Mar 20 2024
# Version: V:01
##################################

# Set variables
INSTANCE_IP="44.202.107.186"  # Replace with your EC2 instance's public IP address
KEY_FILE="/home/durgesh_devops/devop_ec2.pem"  # Path to your private key file
USERNAME="ubuntu"  # Username to connect to the EC2 instance (may vary based on AMI)

# Check if the private key file exists
if [ ! -f "$KEY_FILE" ]; then
    echo "Private key file not found: $KEY_FILE"
    exit 1
fi

# Check if SSH is installed
if ! command -v ssh &> /dev/null; then
    echo "SSH is not installed. Please install SSH."
    exit 1
fi

# Check if the EC2 instance IP is provided
if [ -z "$INSTANCE_IP" ]; then
    echo "EC2 instance IP address not provided."
    exit 1
fi

# Connect to EC2 instance using SSH
ssh -i "$KEY_FILE" "$USERNAME@$INSTANCE_IP"


#!/bin/bash

# Set variables
INSTANCE_IP="44.202.107.186"  # Replace with your EC2 instance's public IP address
KEY_FILE="/home/durgesh_devops/devop_ec2.pem"  # Path to your private key file
USERNAME="ubuntu"  # Username to connect to the EC2 instance (may vary based on AMI)


# Connect to EC2 instance using SSH
ssh -i "$KEY_FILE" "$USERNAME@$INSTANCE_IP"

#!/bin/bash


# Prompt for new username
read -p "Enter username for new account: " username

# Create the new user account
sudo useradd -m $username

# Prompt for user to set PASSWORD
sudo passwd $username

echo "NEW USER CREATED"

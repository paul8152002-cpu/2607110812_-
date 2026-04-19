#!/bin/bash

# Make a group for the project
sudo groupadd projectA

# Create two users and add them to the group
sudo useradd -m -G projectA member1
sudo useradd -m -G projectA member2

# Create the shared workspace
sudo mkdir /projectA

# Give root ownership, restrict access to group members only
sudo chown root:projectA /projectA
sudo chmod 770 /projectA

# Sanity check
echo "=== [ID Check for member1] ==="
id member1
echo ""
echo "=== [ID Check for member2] ==="
id member2
echo ""
echo "=== [Directory Permissions Check] ==="
ls -ld /projectA

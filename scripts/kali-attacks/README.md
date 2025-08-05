# Kali Attack Simulation Scripts

This directory contains scripts for `labpi2@labpi2.local` (Kali Linux) to demonstrate security monitoring and honeypot detection.

## Purpose

These scripts simulate common attack patterns to trigger OpenCanary alerts and demonstrate security monitoring capabilities during the workshop.

## Scripts Overview

### Network Reconnaissance
- `network_scan.sh` - Basic network discovery and port scanning
- `service_enum.sh` - Service enumeration and version detection

### Attack Simulations
- `ssh_bruteforce.sh` - SSH brute force attempt simulation
- `web_scan.sh` - Web application scanning and probing
- `smb_enum.sh` - SMB/CIFS enumeration attacks
- `database_probe.sh` - Database connection attempts

### Utility Scripts
- `setup_kali.sh` - Install required tools on Kali Pi
- `demo_sequence.sh` - Automated demonstration sequence
- `cleanup.sh` - Clean up after demonstrations

## Safety Guidelines

⚠️ **IMPORTANT**: These scripts are for educational demonstration only
- Only run against honeypot systems (labpi3@labpi3.local)
- Never use on production systems or networks you don't own
- Always obtain proper authorization before testing

## Workshop Integration

These scripts will be executed during the workshop to:
1. Demonstrate real-time threat detection
2. Show honeypot alert generation
3. Illustrate attack patterns and signatures
4. Provide hands-on security monitoring experience
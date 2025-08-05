# OpenCanary Honeypot Setup Guide

## Overview

OpenCanary is a honeypot that mimics vulnerable services to detect and alert on malicious activity. It will be deployed on `labpi3@labpi3.local`.

## Installation

### Prerequisites
- Raspberry Pi with fresh OS installation
- Network connectivity
- Python 3.x installed

### Install OpenCanary

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install python3-pip python3-dev libssl-dev libffi-dev

# Install OpenCanary
sudo pip3 install opencanary
```

## Configuration

### Basic Configuration File

Create/edit the configuration file:
```bash
sudo mkdir -p /etc/opencanary
sudo opencanaryd --copyconfig
```

### Services to Configure

The following services will be enabled for the workshop demonstration:

#### 1. SSH Honeypot
- **Port**: 2222 (to avoid conflicts with real SSH)
- **Purpose**: Detect SSH brute force attempts
- **Demo**: Kali will attempt SSH connections

#### 2. HTTP/HTTPS Web Server
- **Port**: 80/443
- **Purpose**: Detect web scanning and attacks
- **Demo**: Nmap scans and curl requests

#### 3. FTP Server
- **Port**: 21
- **Purpose**: Detect FTP enumeration
- **Demo**: Anonymous FTP connection attempts

#### 4. SMB/CIFS Server
- **Port**: 445
- **Purpose**: Detect Windows-based attacks
- **Demo**: SMB enumeration tools

#### 5. MySQL Database
- **Port**: 3306
- **Purpose**: Detect database attacks
- **Demo**: Database connection attempts

## Alert Configuration

### Webhook Integration Options

**Option 1: Discord Webhook**
- Create Discord webhook URL
- Configure in OpenCanary for real-time notifications

**Option 2: Telegram Bot**
- Create Telegram bot
- Configure bot token for alert delivery

**Option 3: Email Alerts**
- Configure SMTP settings
- Set up email notifications for incidents

### Log Configuration

- **Log Location**: `/var/log/opencanary.log`
- **Log Format**: JSON for easy parsing
- **Rotation**: Configure logrotate for management

## Service Management

### Start OpenCanary
```bash
sudo opencanaryd --start
```

### Check Status
```bash
sudo opencanaryd --status
```

### Stop OpenCanary
```bash
sudo opencanaryd --stop
```

## Testing & Validation

### Verify Services are Running
```bash
# Check listening ports
sudo netstat -tlnp | grep python

# Test individual services
nmap -sV localhost
```

### Generate Test Alerts
- SSH connection attempt: `ssh pi@labpi3.local -p 2222`
- HTTP request: `curl http://labpi3.local`
- FTP connection: `ftp labpi3.local`

## Workshop Demonstration Plan

1. **Show OpenCanary Configuration**
   - Display active services
   - Explain honeypot concept

2. **Real-time Monitoring**
   - Tail log files during demonstration
   - Show webhook/alert notifications

3. **Attack Simulation**
   - Use Kali Linux to scan and probe services
   - Demonstrate various attack vectors
   - Show immediate alert generation

4. **Log Analysis**
   - Review generated logs
   - Explain threat intelligence gathering

## Troubleshooting

### Common Issues
- Port conflicts with existing services
- Permission issues with log files
- Network connectivity problems

### Debug Commands
```bash
# Check configuration
sudo opencanaryd --config-check

# View recent logs
sudo tail -f /var/log/opencanary.log

# Test network connectivity
sudo netstat -tlnp
```

## Security Considerations

- Run OpenCanary with minimal privileges
- Regularly update blocklists and signatures
- Monitor for false positives
- Ensure proper network segmentation

## Next Steps

- [ ] Complete basic installation
- [ ] Configure webhook alerts
- [ ] Test all honeypot services
- [ ] Create Kali attack scripts
- [ ] Document demonstration workflow
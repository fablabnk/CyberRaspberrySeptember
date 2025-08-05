# Cyber Security Workshop: Raspberry Pi Honeypot & DNS Filtering

## Overview of Lab Setup

**Pi Devices:**
- `labpi1@labpi1.local` - Pi-hole (DNS filtering/ad blocking)
- `labpi3@labpi3.local` - OpenCanary (honeypot for intrusion detection)
- `labpi2@labpi2.local` - Kali with scanning scripts to trigger alerts

## Core Services to Showcase

### 1. OpenCanary — Honeypot for Intrusion Detection
- Configure multiple Canary services:
  - SSH
  - SMB (Windows file sharing)
  - HTTP/HTTPS (webserver)
  - FTP
  - MySQL
- Setup alerts (webhook/Discord/Telegram bot for live notifications)
- Demo: Real-time alerts when Kali scans or attempts connections

### 2. Pi-hole — Network-wide Ad Blocking and DNS Filtering
- Full Pi-hole install as LAN DNS server
- Real-time blocked request dashboard
- Demo: Browse ad-heavy sites, show malicious domain blocking
- Explain DNS filtering & privacy benefits

### 3. Basic Network Setup
- Pi-hole as network DNS (router DHCP or manual device config)
- OpenCanary reachable for scanning demos
- Network topology overview

### 4. Optional Advanced Features
- Wireshark/tcpdump for packet capture demonstration
- Fail2Ban for automatic IP banning
- Simple firewall (ufw) rules demo

## Workshop Flow

1. **Introduction** (10 min)
   - Why network security matters
   - DNS & honeypot concepts

2. **Pi-hole Demonstration** (15 min)
   - DNS filtering in action
   - Ad blocking & privacy benefits
   - Dashboard walkthrough

3. **OpenCanary Demonstration** (15 min)
   - Honeypot detection principles
   - Alert generation & monitoring

4. **Live Attack Simulation** (15 min)
   - Kali VM scanning honeypot services
   - Real-time alert demonstration
   - Network traffic analysis

5. **Discussion & Q&A** (10 min)
   - Real-world applications
   - Implementation considerations
   - Next steps for attendees
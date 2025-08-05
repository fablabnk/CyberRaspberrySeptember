# Cyber Security Workshop: Raspberry Pi Honeypot & DNS Filtering

A hands-on workshop demonstrating network security using Raspberry Pi devices for honeypot detection and DNS filtering.

## Repository Structure

```
├── docs/
│   ├── workshop-presentation.md       # Workshop flow and presentation structure
│   ├── pihole-setup.md               # Complete Pi-hole setup instructions
│   └── opencanary-setup.md           # OpenCanary honeypot configuration
└── scripts/
    └── kali-attacks/                 # Attack simulation scripts for demonstration
        ├── README.md
        ├── network_scan.sh
        ├── ssh_bruteforce.sh
        └── setup_kali.sh
```

## Lab Setup

- **labpi1@labpi1.local** - Pi-hole (DNS filtering/ad blocking)
- **labpi3@labpi3.local** - OpenCanary (honeypot for intrusion detection)  
- **labpi2@labpi2.local** - Kali Linux (attack simulation)

## Quick Start

1. **Workshop Planning**: See `docs/workshop-presentation.md`
2. **Pi-hole Setup**: Follow `docs/pihole-setup.md`
3. **OpenCanary Setup**: Follow `docs/opencanary-setup.md`
4. **Attack Scripts**: Use scripts in `scripts/kali-attacks/` for demonstrations

## Workshop Objectives

- Demonstrate network-wide DNS filtering with Pi-hole
- Show honeypot-based intrusion detection with OpenCanary
- Simulate real attacks and observe security monitoring
- Explain practical network security concepts

## Safety Notice

⚠️ **Attack simulation scripts are for educational demonstration only**
- Only use against designated honeypot systems
- Never run on production networks
- Always obtain proper authorization
# Pi-hole Installation & Configuration Guide

## Installation Steps

### 1. Install Pi-hole (Automated Installer)

Run the official installation script:

```bash
curl -sSL https://install.pi-hole.net | bash
```

This launches a TUI (text-based user interface) installer.

### 2. Follow the Installer Prompts

Configure the following options:

- **Static IP**: Pi-hole works best with a static IP
- **Upstream DNS provider**: Choose one (Google, Cloudflare, Quad9)
- **Blocklists**: Default is fine to start
- **Admin Web Interface**: Enable (recommended)
- **Webserver (lighttpd)**: Enable unless running another webserver
- **Log queries**: Optional, useful for troubleshooting
- **Privacy mode**: Choose your comfort level

### 3. Note the Password

At installation end, Pi-hole shows a **web interface password**. Save this or run:

```bash
pihole -a -p
```

to set/change it later.

### 4. Access the Web Interface

From another device on the same network:

```
http://<Pi-hole-IP>/admin
```

Example: `http://192.168.1.10/admin`

### 5. Configure Network to Use Pi-hole

**Option A: Router-level DNS (recommended)**
- Log into router
- Set primary DNS to Pi-hole's IP address
- All devices will use it automatically

**Option B: Per-device DNS**
- Manually set DNS on each device to Pi-hole's IP

### 6. Test Installation

On a device using Pi-hole for DNS:
- Visit `http://pi.hole` → should go to web interface
- Visit `https://example.com` → should load normally
- Ads on websites should be blocked

## Configuration Notes

### Post-Installation Setup

After installation, run:
```bash
sudo pihole -g
```
This updates the blocklists to ensure proper functionality.

### Device DNS Configuration

Assume Pi-hole server IP: `192.168.1.42`

#### Windows:
1. Control Panel > Network and Internet > Network and Sharing Center
2. Change adapter settings
3. Right-click network > Properties
4. Select Internet Protocol Version 4 (TCP/IPv4) > Properties
5. Use the following DNS server addresses:
   - Preferred DNS: `192.168.1.42`
   - Alternate DNS: leave blank or `0.0.0.0`

#### macOS:
1. System Settings > Network
2. Select connection > Details
3. DNS tab
4. Remove existing servers
5. Add `192.168.1.42`

#### Android:
1. Long-press Wi-Fi > Modify network
2. Show advanced options
3. Set IP settings to Static
4. DNS 1: `192.168.1.42`
5. DNS 2: leave blank

#### iOS:
1. Settings > Wi-Fi
2. Tap "i" next to network
3. Configure DNS > Manual
4. Delete existing entries
5. Add `192.168.1.42`

## Troubleshooting

- If static IP configuration breaks connectivity, check router settings
- Use router DHCP configuration when possible instead of per-device setup
- Monitor Pi-hole logs for DNS resolution issues

## Next Steps

- Add more blocklists for stricter filtering
- Test with various websites to verify ad blocking
- Monitor dashboard for blocked request statistics
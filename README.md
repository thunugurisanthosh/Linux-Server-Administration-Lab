# Linux-Server-Administration-Lab

## 📌 Project Overview

A hands-on Linux Server Administration project built on an **AWS EC2 Ubuntu Linux server**. The project demonstrates core Linux system administration, security, networking, web server management, and troubleshooting skills.

## 🛠️ Technologies

- AWS EC2
- Ubuntu Linux
- Apache2
- OpenSSH
- UFW Firewall
- Linux Users & Groups
- Sudo
- File Permissions
- ACL
- systemd
- Linux Networking
- Disk & Storage Management
- Bash
## 🎯 Objectives

- Deploy and configure an Ubuntu Linux server on AWS EC2
- Manage Linux users and groups
- Configure sudo privileges
- Implement file ownership and permissions
- Configure ACL for controlled file access
- Install and manage SSH
- Install and configure Apache2
- Configure UFW firewall
- Manage services using systemd
- Perform network and connectivity troubleshooting
- Monitor disk and storage usage
- Deploy a custom Apache website

## 🚀 Implementation

### 1. AWS EC2 Setup

Created an Ubuntu Linux EC2 instance with:

- Public IPv4 address
- Security Group
- SSH access on port `22`
- HTTP access on port `80`
- Internet Gateway and route table

### 2. Linux User & Group Management

Created users and groups:
```bash
sudo groupadd developers
sudo groupadd admins
sudo groupadd support

sudo useradd -m -s /bin/bash devuser
sudo useradd -m -s /bin/bash adminuser
sudo useradd -m -s /bin/bash supportuser

sudo usermod -aG developers devuser
sudo usermod -aG admins adminuser
sudo usermod -aG support supportuser
sudo usermod -aG sudo adminuser

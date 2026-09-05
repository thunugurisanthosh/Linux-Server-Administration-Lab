#!/bin/bash

echo "=============================="
echo " Linux Server Health Check"
echo "=============================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Memory:"
free -h

echo ""
echo "Disk:"
df -h /

echo ""
echo "SSH Status:"
systemctl is-active ssh

echo ""
echo "Apache Status:"
systemctl is-active apache2

echo ""
echo "=============================="
echo " Health Check Completed"
echo "=============================="
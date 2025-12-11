#!/bin/bash

# ===========================================================
# Project: Linux Server Dashboard
# Author: Neacsu Andrei
# Description: A lightweight, color-coded terminal dashboard that 
#              displays real-time system metrics (CPU, RAM, Disk, Network).
# License: MIT
# ===========================================================

# Define Colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' 

# load OS data
source /etc/os-release
OS_NAME=$PRETTY_NAME 

# Gather system metrics
IP=$(hostname -I | awk '{print $1}')
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
# Extract used vs total memory
MEMORY=$(free -h | awk '/Mem:/ {print $3 " / " $2}')
# Extract disk usage on root /
DISK=$(df -h / | awk 'NR==2 {print $3 " / " $2 " (" $5 " used)"}')
DATE_NOW=$(date "+%Y-%m-%d %H:%M")

#---Display Dashboard---
echo -e "${CYAN}---------------------------------------------------${NC}"
echo -e "${GREEN}      SYSTEM DASHBOARD - $DATE_NOW ${NC}"
echo -e "${CYAN}---------------------------------------------------${NC}"
echo "OS:       $OS_NAME"
echo "Kernel:   $KERNEL"    
echo "Hostname: $(hostname)"
echo -e "${CYAN}---------------------------------------------------${NC}"
echo "IP Address:  $IP"
echo "Uptime:      $UPTIME"
echo -e "${CYAN}---------------------------------------------------${NC}"
echo "RAM Usage:   $MEMORY"
echo "Disk Usage:  $DISK"
echo -e "${CYAN}---------------------------------------------------${NC}"
echo -e "${GREEN}WHO IS ONLINE:${NC}"
who 
echo -e "${CYAN}---------------------------------------------------${NC}"
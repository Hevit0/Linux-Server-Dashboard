# 📊 Linux Server Dashboard

A lightweight, bash-based dashboard for System Administrators. 
It provides a **real-time snapshot** of your server's health, networking, and resources immediately upon login.

## 🚀 Features
* **Zero Dependencies:** Works on any standard Linux distro (Debian, Ubuntu, CentOS, etc.).
* **Instant Metrics:** Displays RAM usage, Disk space, Uptime, and IP address.
* **User Monitoring:** Shows currently logged-in users.
* **Visual Interface:** Color-coded output for better readability.

## 🛠️ Installation & Usage

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Hevit0/Linux-Server-Dashboard.git](https://github.com/Hevit0/Linux-Server-Dashboard.git)

2. **Make the script executable:**
   ```bash
   chmod +x sys_dashboard.sh

3. **Run the dashboard:**
   ```bash
   ./sys_dashboard.sh

PRO TIP: Create an Alias!
Do you want to run this dashboard by just typing "dashboard" ? Add this to 
.bashrc :

```bash
alias dashboard='~/path/to/sys_dashboard.sh'
```

Example Output:
---------------------------------------------------
      SYSTEM DASHBOARD - 2025-12-11 20:45 
---------------------------------------------------
OS:       Debian GNU/Linux 11 (bullseye)
Kernel:   5.10.0-21-amd64
Hostname: Production-Server-01
---------------------------------------------------
IP Address:  192.168.1.50
Uptime:      up 2 weeks, 3 days, 4 hours
---------------------------------------------------
RAM Usage:   4.2Gi / 16Gi
Disk Usage:  45G / 500G (9% used)
---------------------------------------------------
WHO IS ONLINE:
admin     pts/0     2025-12-11 18:00
---------------------------------------------------


#  Open Source Audit Project – Apache HTTP Server

##  Course Details
- Course Name: Open Source Software (OSS NGMC)  
- University: VIT Bhopal  

##  Student Information
- Name: Abeer Saxena  
- Registration Number: 24BCE10987  
- Selected Software: Apache HTTP Server  
- Platform Used: Fedora Linux 43  

##  Project Directory Structure

VITYA/
├── report/
│   └── final_report.pdf
├── scripts/
│   ├── 01_system_info.sh
│   ├── 02_package_check.sh
│   ├── 03_disk_audit.sh
│   ├── 04_log_analysis.sh
│   ├── 05_manifesto_generator.sh
│   └── manifesto_output.txt
├── screenshots/
│   ├── script1.png
│   ├── script2.png
│   ├── script3.png
│   ├── script4.png
│   └── script5.png
├── .gitignore
└── README.md

##  Project Overview
This project focuses on analyzing an open-source system, Apache HTTP Server, from both technical and conceptual perspectives.

##  Requirements
- bash  
- coreutils  
- grep  
- gawk  
- rpm / dnf  
- systemd  
- Apache HTTP Server (httpd)  

##  Installation & Setup

### Update System
sudo dnf update -y

### Install Required Packages
sudo dnf install -y httpd git grep gawk coreutils curl

### Start Apache Server
sudo systemctl enable --now httpd
sudo systemctl status httpd

##  Running the Project

### Make Scripts Executable
chmod +x scripts/*.sh

### Run Scripts
./scripts/01_system_info.sh
./scripts/02_package_check.sh httpd
./scripts/03_disk_audit.sh

curl -I http://localhost
curl -I http://localhost/test

./scripts/04_log_analysis.sh /var/log/httpd/access_log GET
./scripts/04_log_analysis.sh /var/log/httpd/error_log error

./scripts/05_manifesto_generator.sh

##  Script Descriptions

### Script 1 – System Info
Displays OS details, user, and uptime.

### Script 2 – Package Checker
Checks installed packages and displays info.

### Script 3 – Disk Auditor
Displays directory sizes and permissions.

### Script 4 – Log Analyzer
Analyzes Apache logs and counts requests.

### Script 5 – Manifesto Generator
Generates a custom open-source statement.

##  Testing Workflow
cat /etc/fedora-release
sudo systemctl enable --now httpd
ps aux | grep httpd

curl -I http://localhost
curl -I http://localhost/random

## Notes
- Use sudo for log access if required
- Works on Fedora Live and Installed systems

##  Conclusion
Demonstrates Linux scripting and Apache server usage.

Made for academic purposes – VIT Bhopal

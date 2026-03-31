#!/bin/bash

echo "=============================================="
echo "Open Source Audit - System Identity Report"
echo "Student   : Abeer Saxena (24BCE10987)"
echo "Software  : Apache HTTP Server"
echo "=============================================="

echo "Distro    : $(cat /etc/fedora-release)"
echo "Kernel    : $(uname -r)"
echo "User      : $USER"
echo "Home Dir  : $HOME"
echo "Uptime    : $(uptime -p)"
echo "Date/Time : $(date)"
echo "License   : Linux kernel is licensed under GNU GPL v2."

echo "=============================================="

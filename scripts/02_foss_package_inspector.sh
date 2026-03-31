#!/bin/bash

echo "=============================================="
echo "OSS Package Inspector"
echo "=============================================="

echo "Package      : httpd"
echo "Pkg Manager  : rpm"

echo "=============================================="

# Check if Apache (httpd) is installed
if rpm -q httpd > /dev/null
then
    echo "httpd is installed."
    
    echo "Version      : $(rpm -q httpd --queryformat '%{VERSION}\n')"
    echo "License      : $(rpm -q httpd --queryformat '%{LICENSE}\n')"
    echo "Summary      : $(rpm -q httpd --queryformat '%{SUMMARY}\n')"
else
    echo "httpd is NOT installed."
fi

echo "=============================================="
echo "Philosophy note:"
echo "Apache: the web server that helped build the open internet."
echo "=============================================="

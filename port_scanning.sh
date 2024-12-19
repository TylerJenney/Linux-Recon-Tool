#!/bin/bash

echo "Select Port Scanning Type:"
echo "1) Port Scan"
echo "2) Ping Scan"
echo "3) OS Scan"
echo "4) Upload a file with multiple hosts"

read -p "Enter your choice: " scan_choice

case $scan_choice in
    1)
        read -p "Enter target: " target
        nmap -p 1-65535 $target > "${target}_portscan.txt"
        echo "Port scan saved to ${target}_portscan.txt"
        ;;
    2)
        read -p "Enter target: " target
        nmap -sn $target > "${target}_ping_scan.txt"
        echo "Ping scan saved to ${target}_ping_scan.txt"
        ;;
    3)
        read -p "Enter target: " target
        nmap -O $target > "${target}_os_scan.txt"
        echo "OS scan saved to ${target}_os_scan.txt"
        ;;
    4)
        read -p "Enter the file path: " filepath
        while IFS= read -r host; do
            nmap -p 1-65535 $host > "${host}_portscan.txt"
        done < $filepath
        echo "Scans completed for all hosts in $filepath"
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac

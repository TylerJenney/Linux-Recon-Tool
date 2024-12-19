#!/bin/bash

# Banner
echo "------------------------------------"
echo " Recon & Vulnerability Assessment Tool "
echo "------------------------------------"

# Menu
echo "Select an option:"
echo "1) Recon Domains"
echo "2) Port Scanning (NMAP)"
echo "3) Ping Scan"
echo "4) Social Engineering"
echo "5) Vulnerability Assessment"
echo "6) Exit"

read -p "Enter your choice: " choice

case $choice in
    1)
        ./recon_domains.sh
        ;;
    2)
        ./port_scanning.sh
        ;;
    3)
        ./ping_scan.sh
        ;;
    4)
        ./social_engineering.sh
        ;;
    5)
        ./vulnerability_assessment.sh
        ;;
    6)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice! Please try again."
        ./main.sh
        ;;
esac

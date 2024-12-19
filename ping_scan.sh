#!/bin/bash

echo "1) Single Target Ping"
echo "2) Upload a file with multiple targets"

read -p "Enter your choice: " ping_choice

case $ping_choice in
    1)
        read -p "Enter target: " target
        ping -c 4 $target > "${target}_ping_results.txt"
        echo "Ping results saved to ${target}_ping_results.txt"
        ;;
    2)
        read -p "Enter the file path: " filepath
        while IFS= read -r target; do
            ping -c 4 $target > "${target}_ping_results.txt"
        done < $filepath
        echo "Ping scans completed for all targets in $filepath"
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac

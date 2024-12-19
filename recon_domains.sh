#!/bin/bash

read -p "Enter the domain to recon: " domain

# WHOIS and Dig commands for recon
echo "Performing WHOIS lookup..."
whois $domain > "${domain}_whois.txt"

echo "Performing DNS recon..."
dig $domain > "${domain}_dns.txt"

echo "Results saved to ${domain}_whois.txt and ${domain}_dns.txt"

#!/bin/bash

# Advanced Nmap Script

# Check if Nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Nmap is not installed. Please install Nmap first."
    exit 1
fi

# Get user input for target host(s)
echo "Enter target host(s) (separated by space):"
read -r targets

# Get user input for Nmap scan type
echo "Enter Nmap scan type (e.g., -sS for TCP SYN scan):"
read -r scan_type

# Get user input for additional options
echo "Enter additional Nmap options (if any):"
read -r additional_options

# Run Nmap scan
echo "Running Nmap scan..."
nmap "$scan_type" "$additional_options" "$targets"

# End of scrip

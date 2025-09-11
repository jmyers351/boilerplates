#!/bin/bash
# output temp every 10 mins to file
# this script is made for raspberry pi 5

# File: /home/jm_admin/log_cpu_temp.sh

# Get date and time
timestamp=$(date +"%Y-%m-%d %H:%M:%S")

# Get CPU temp and strip formatting
temp=$(vcgencmd measure_temp | tr -d "temp=" | tr -d "'C")

# Append to log file
echo "$timestamp - $temp°C" >> /home/jm_admin/cpu_temp_results.log

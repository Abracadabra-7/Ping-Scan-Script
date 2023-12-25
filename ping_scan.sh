#!/bin/bash

# Make sure an IP address is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide an IP address as an argument."
    exit 1
fi

# Create a timestamp for the filename
timestamp=$(date +"%Y%m%d%H%M%S")

# Create a file to store the results
result_file="ping_results_${timestamp}.txt"
touch "$result_file"

# Loop through the IP range and ping each IP address
for ip in $(seq 1 254); do
    # Use parallel to run the ping commands concurrently
    echo "ping -c 1 $1.$ip | grep '64 bytes' | cut -d ' ' -f 4 | tr -d ':' >> $result_file" | parallel &
done

# Wait for all background processes to finish
wait

echo "Ping scan completed. Results stored in $result_file"

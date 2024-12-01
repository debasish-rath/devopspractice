#!/bin/bash

# Check if the count file exists, if not create it and initialize the counter
if [ ! -f count.txt ]; then
    echo 0 > count.txt
fi

# Read the current count
count=$(cat count.txt)

# Increment the count
count=$((count + 1))

# Save the new count
echo $count > count.txt

# Display the current date and the number of times the script has run
echo "Current Date: $(date)"
echo "This script has run $count times."


#!/bin/bash

# Create necessary directories
mkdir -p file images videos

# Move files to appropriate directories if they exist
if ls *.txt 1> /dev/null 2>&1; then
    mv *.txt file/
fi

if ls *.jpeg 1> /dev/null 2>&1; then
    mv *.jpeg images/
fi

if ls *.mov 1> /dev/null 2>&1; then
    mv *.mov videos/
fi

# Remove log files if they exist
if ls *.log 1> /dev/null 2>&1; then
    rm *.log
fi

echo "Directories have been organized."

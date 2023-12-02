#!/bin/bash
    # Check if specific files exist teszt001 first_file.txt
    if   [ -f "file_3.txt" ] && [ -f "file_2.txt" ] && [ -f "file_1.txt" ] && [ -f "first_file.txt" ] && [ -f "teszt001.txt" ]; then
        echo "Validation successful. All required files exist."
        exit 0  # Exit with success status
    else
        echo "Error: Some or all required files are missing."
        exit 1  # Exit with failure status
    fi

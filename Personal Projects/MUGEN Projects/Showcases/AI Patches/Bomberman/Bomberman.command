#!/bin/bash

# Detect the operating system
OS_TYPE=$(uname -s)

# Check if OS is Linux or macOS
if [[ "$OS_TYPE" == "Linux" ]] || [[ "$OS_TYPE" == "Darwin" ]]; then
    # Change to parent directory (same as cd ../../.. in the bat file)
    cd "$(dirname "$0")/../../.."
    
    # Determine the correct executable based on OS
    if [[ "$OS_TYPE" == "Darwin" ]]; then
        # macOS
        EXECUTABLE="./Ikemen_GO_MacOS"
    else
        # Linux
        EXECUTABLE="./Ikemen_GO_Linux"
    fi
    
    # Run IKEMEN GO with the exact parameters from Bomberman.bat
    "$EXECUTABLE" -p1 "AI Patches/Bomberman/bomberman (before AI Patch)/bomberman.def" -p1.ai 8 -p2.color 1 -p2 "AI Patches/Bomberman/bomberman (after AI Patch)/cool_ai_bomberman.def" -p2.ai 8 -p2.color 2
    
else
    echo "Error: This script only supports Linux and macOS."
    echo "Detected OS: $OS_TYPE"
    exit 1
fi

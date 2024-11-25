#!/bin/bash

# Display disk space
df -h

# Ask user for update choice
echo -e "\nChoose update option:"
echo "1. Update all (pacman and paru)"
echo "2. Update only with pacman"
echo "3. Update only with paru"
echo "4. clean pacman cache"
echo "5. Do nothing"

read -n 1 -r -p "Enter the number of your choice (default is 6): " choice
echo    # Move to a new line after the user's input

# Set default choice to 1 if no input is provided
choice=${choice:-5}

case $choice in
    1)
        # Update all with pacman and paru
        sudo pacman -Syu
        echo -e "\nUpdate pacman done"
        paru -Syu
        echo -e "\nUpdate paru done"
        ;;
    2)
        # Update only with pacman
        sudo pacman -Syu
        echo -e "\nUpdate pacman done"
        ;;
    3)
        # Update only with paru
        paru -Syu
        echo -e "\nUpdate paru done"
        ;;
    4)
        # Clean pacman cache
        paru -Sc
        echo -e "\nPacman cache is clean"
        ;;
    5)
        # Do nothing
        echo "No updates performed."
        ;;
    *)
        # Do nothing
        echo "No updates performed."
        ;;
esac
sleep 10
exit

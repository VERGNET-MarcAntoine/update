#!/bin/bash

# Display disk space
df -h

# Ask user for update choice
echo -e "\nChoose update option:"
echo "1. Update all (pacman and paru)"
echo "2. Update all (pacman and paru) and reboot after"
echo "3. Update only with pacman"
echo "4. Update only with paru"
echo "5. clean pacman cache"
echo "6. Do nothing"

read -n 1 -r -p "Enter the number of your choice (default is 6): " choice
echo    # Move to a new line after the user's input

# Set default choice to 1 if no input is provided
choice=${choice:-6}

case $choice in
    1)
        # Update all with pacman and paru
        sudo pacman -Syu
        echo -e "\nUpdate pacman done"
        paru -Syu
        echo -e "\nUpdate paru done"
        ;;
    2)
        # Update only with pacman and paru and reboot after
        sudo pacman -Syu
        echo -e "\nUpdate pacman done"
        paru -Syu
        echo -e "\nUpdate paru done"
        sudo reboot
        ;;
    3)
        # Update only with pacman
        sudo pacman -Syu
        echo -e "\nUpdate pacman done"
        ;;
    4)
        # Update only with paru
        paru -Syu
        echo -e "\nUpdate paru done"
        ;;
    5)
        # Clean pacman cache
        paru -Sc
        echo -e "\nPacman cache is clean"
        ;;
    6)
        # Do nothing
        echo "No updates performed."
        ;;
    *)
        # Do nothing
        echo "No updates performed."
        ;;
esac

exit

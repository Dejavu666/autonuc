#!/bin/bash

# Check if subfinder is installed, if not, install it
if ! command -v subfinder &> /dev/null; then
    echo "Installing subfinder..."
    sudo apt install subfinder
fi

# Check if httpx is installed, if not, install it
if ! command -v httpx-toolkit &> /dev/null; then
    echo "Installing httpx-toolkit..."
    sudo apt install httpx-toolkit
fi

# Check if nuclei is installed, if not, install it
if ! command -v nuclei &> /dev/null; then
    echo "Installing Nuclei..."
    go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
fi

# Rename and move autonuc.sh file to /usr/bin/autonuc
sudo mv Autonuc.sh /usr/bin/autonuc

# Make the Autonuc file executable
sudo chmod +x /usr/bin/autonuc

# Remove the Autonuc folder from the home directory
if [ -d "$home_dir/Autonuc" ]; then
    echo "Removing Autonuc folder..."
    rm -r "$home_dir/Autonuc"
fi

echo "Autonuc has been installed successfully! Now Enter the command 'autonuc' to run the tool."

#!/bin/bash

# Rename and move autonuc.sh file to /usr/local/bin/autonuc
sudo mv autonuc.sh /usr/bin/autonuc

# Make the NucleiFuzzer file executable
sudo chmod u+x /usr/local/bin/autonuc

# Remove the NucleiFuzzer folder from the home directory
if [ -d "$home_dir/Autonuc" ]; then
    echo "Removing Autonuc folder..."
    rm -r "$home_dir/Autonuc"
fi

echo "NucleiFuzzer has been installed successfully! Now Enter the command 'nucleifuzzer' to run the tool."

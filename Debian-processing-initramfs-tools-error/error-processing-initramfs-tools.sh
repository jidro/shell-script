#!/bin/env bash

# Rename the info folder first.
sudo mv -v /var/lib/dpkg/info /var/lib/dpkg/info_old

# Create a new info folder.
sudo mkdir -pv /var/lib/dpkg/info 

# Update Index.
#sudo aptitude update
sudo apt-get update

# Fix dependencies,
# That is, if a package on the system does not meet the dependency conditions, 
# the command can automatically repair and install the package since that package.
#sudo aptitude install -f
sudo apt-get install -f

# After the last step, some files will be generated in the new info folder. 
# Now move all these files to info_ Under the old folder.
sudo mv -v /var/lib/dpkg/info/* /var/lib/dpkg/info_old 

# To delete your new info folder, add -f, or use the rmdir command to delete a directory. 
# The directory must be empty.
sudo rm -rfv /var/lib/dpkg/info

# Change the previous info folder back to its name.
sudo mv -v /var/lib/dpkg/info_old /var/lib/dpkg/info 

# Update the index again to check for success.
#sudo aptitude install -f
sudo apt-get install -f
#sudo aptitude update
sudo apt-get update
#sudo aptitude upgrade
sudo apt-get upgrade

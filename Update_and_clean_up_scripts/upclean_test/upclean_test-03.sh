#!/bin/bash
echo -e "\033[36mCleaning up system caches...\033[0m"
find /var/cache -type f | xargs rm -rf
echo -e "\033[36m|##################    10% complete    ####################| \033[0m"
find /tmp -type f | xargs rm -rf
echo -e "\033[36m|#########################################################| \033[0m"
find /home -name "*.junk" | xargs rm -rf
echo -e "\033[36mRemoving unused configuration files and files with size of 0... \033[0m"
#find / -name "*.conf" -exec rm -f {} \;
find / -size 0b -exec rm -f {} \;
echo -e "\033[36mDone cleaning up system caches, temp files and junk files. \033[0m"

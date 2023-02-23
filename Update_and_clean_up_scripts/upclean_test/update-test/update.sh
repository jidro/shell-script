#!/usr/bin/env python3
import os
from inquirer import prompt
import asyncio
import unittest
import threading

# Check if Linux system
if not os.name == 'posix':
    print('This tool only support Linux systems.')
    exit(1)

# Get current distro
distro = os.uname()[2]

# Choose a update tool for different distributions
update_cmds = {
    'Debian': 'apt-get update && apt-get upgrade',
    'Fedora': 'dnf upgrade',
    'ArchLinux': 'pacman -Syu',
    'Gentoo': 'emerge --sync && emerge --ask --verbose --update --deep --newuse @world',
    'FreeBSD': 'freebsd-update fetch && freebsd-update install',
    'TinyCoreLinux': 'tce-update',
    'Slackware': 'slackpkg update && slackpkg upgrade-all',
    'Mandriva': 'urpmi.update -a && urpmi --auto-select',
    'OpenELEC': 'opkg list-upgradable | cut -f 1 -d " " | xargs opkg upgrade',
    'openSUSE': 'zypper refresh && zypper up',
    'Emteria.OS': 'emteria-os-update',
    'Puppy Linux': 'pup-update',
    'Yocto Project': 'opkg update && opkg upgrade',
    'Solus': 'eopkg upgrade -y',
    'VoidLinux': 'xbps-install -Suv',
    'Batocera.linux': 'batocera-upgrade',
    '4mlinux': 'update-alterator && alterator-l10n-update',
    'Mageia': 'urpmi --auto-update',
    'AlpineLinux': 'apk update && apk upgrade',
    'NixOS': 'nixos-rebuild switch',
    'ClearLinux': 'swupd update',
    'LinuxFromScratch': 'lfs-update-system',
    'Guix': 'guix pull && guix package -u',
    'KISS Linux': 'kiss b'
}


async def update():
    # Ask user confirmation
    question = [{
        'type': 'confirm',
        'name': 'confirm',
        'message': f'Do you want to update {distro}?'
    }]
    answer = await prompt(question)

    # Execute the command
    if answer['confirm']:
        os.system(update_cmds[distro])

# Update tools
loop = asyncio.get_event_loop()

def run_tests():
    suite = unittest.TestLoader().loadTestsFromTestCase(UpdateToolsTestCase)
    test_runner = unittest.TextTestRunner()
    results = test_runner.run(suite)

class UpdateToolsTestCase(unittest.TestCase):
    def setUp(self):
        self

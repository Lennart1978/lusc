<img src="lusc.jpeg" alt="logo"></img>
# LUSC - Linux UEFI STUB Creator
# Bash and C version !

LUSC (Linux UEFI STUB Creator) is a simple interactive tool to automatically generate UEFI boot entries. It generates `efibootmgr` commands and exports them to a small executable. This script ensures that no changes are written to disk before confirmation.

## Features
- Automatically detects EFI, root, and swap partitions
- Composes and displays `efibootmgr` commands for user confirmation
- Option to create an executable file with the commands or to execute them immediately
- Ensures safety by requiring root privileges

## Usage

### Requirements
- The EFI partition must be mounted to `/boot`
- The kernel and initramfs image must be located at the root of the EFI partition
- Root privileges are required to run the script
- efibootmgr must be installed

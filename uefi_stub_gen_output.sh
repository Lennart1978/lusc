#!/bin/bash
# Generated UEFI boot entries by LUSC
# This is just an example output of lusc !
# Feel free to use the Bash script or the compiled C program :-)
efibootmgr --create --disk /dev/nvme0n1 --part 1 --label "ARCHLINUX_EFI_STUB (Fallback)" --loader /vmlinuz-linux --unicode "root=UUID=a2ee1b5c-ed04-4e20-86ed-753f8e87ce78 rw quiet splash hostname=lennartz initrd=\initramfs-linux-fallback.img" --verbose
efibootmgr --create --disk /dev/nvme0n1 --part 1 --label "ARCHLINUX_EFI_STUB" --loader /vmlinuz-linux --unicode "root=UUID=a2ee1b5c-ed04-4e20-86ed-753f8e87ce78 rw quiet splash hostname=lennartz initrd=\initramfs-linux.img" --verbose
exit 0

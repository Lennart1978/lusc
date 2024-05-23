<img src="lusc.jpeg" alt="logo"></img>
# LUSC - Linux UEFI STUB Creator

## Description

LUSC (Linux UEFI STUB Creator) is an interactive Bash script that automatically generates UEFI boot entries. It creates `efibootmgr` commands and exports them to a small executable script. No changes are written to disk until confirmed by the user. This tool is intended for advanced users who understand what an EFI STUB is and how UEFI boot entries work.

## Usage

- Run the script with root privileges: sudo ./lusc
- Follow the prompts to specify the EFI partition, boot entry label, and any additional kernel parameters.
- Confirm the generated efibootmgr commands.
- Choose to either create an executable script with the commands, execute the commands directly, or abort the process.

### Prerequisites
- The EFI partition must be mounted to `/boot`.
- Kernel and initramfs images must be located at the root of the EFI partition.
- Some UEFI systems do not allow more than one EFI STUB entry.
- `efibootmgr` is not capable of modifying existing EFI entries; you always need to delete/overwrite entries to make changes.

### Running the Script
```bash
sudo ./lusc
```

### Options
```bash
sudo ./lusc -h
```
Show some info.

### C Version:
You can also use a compiled C binary version of lusc if you like:
- make
- sudo make install (binary=/usr/bin/lusc-c you can adjust this in the provided Makefile)



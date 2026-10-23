## Lab 08

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab08/Instructions.html

## Part 1 - `ssh` `config` file

1. `ssh` commands for connecting to each of your sandboxes:
```bash
# to connect to original sandbox with cloned GitHub repo:
ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@35.172.45.112

# to connect to new sandbox for this lab:
ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@184.197.46.249
```

2. Options commonly used in a `config` file for `ssh`:

| `ssh` `config` Option   | Description  |
|---------------|------------------------|
| `Host`        |  Alias for host                      |
| `HostName`    |  IP of host                      |
| `User`        |  Login name                      |
| `Port`        |  Port used to connect                      |
| `IdentityFile`|  ID Key used to connect                      |

3. `ssh` `config` file contents:
```
# entry to connect to original sandbox with cloned GitHub repo:
# ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@35.172.45.112
Host mainaws
	HostName 35.172.45.112
	User ubuntu
	Port 22
	IdentityFile C:\Users\1n21g\Downloads\labsuser.pem


# entry to connect to new sandbox for this lab:
# ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@184.197.46.249
Host secondaws
	HostName 184.197.46.249
	User ubuntu
	Port 22
	IdentityFile C:\Users\1n21g\Downloads\labsuser.pem
```

4. `ssh` commands that make use of `config` file entries:
```bash
# to connect to original sandbox with cloned GitHub repo:
ssh mainaws

# to connect to new sandbox for this lab:
ssh second aws
```

## Part 2

**Device Management Commands**

| Command    | Description | Example |
|------------|-------------|---------|
| `lsblk`    |  Lists information about all block devices           |  lsblk       |
| `blkid`    |  Shows data from block devices           | blkid        |
| `parted`   |  Manipulate partitions           | parted [disk]        |
| `gdisk`    |  Manipulate partition tables           | gdisk [disk]        |
| `gdisk -l` |  Lists partition tables           | gdisk -l        |
| `strings`  |  Searches for printable strings in file           | strings [file]        |

**Filesystem Management Commands**

| Command      | Description | Example |
|--------------|-------------|---------|
| `df -h`      | Displays disk space information            | df -h        |
| `/etc/fstab` | File that sets up mounting every boot            | cat /etc/fstab        |
| `mkfs`       | Makes a file system            | mkfs [partion name]        |
| `mount`      | Attach a file system to be read            |         |
| `umount`     | Unmount a file system            |         |
| `mount -a`   | Mounts all systems listed in fstab            | mount -a        |
| `shred`      | Removes a file by deleting it and then writing over it            | shred [file]        |

## Part 3 - What do we have?

1. Command: lsblk xvda
```
ubuntu@disklab-sandbox:/dev$ lsblk xvda
NAME     MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
xvda     202:0    0   16G  0 disk
├─xvda1  202:1    0   15G  0 part /
├─xvda14 202:14   0    4M  0 part
├─xvda15 202:15   0  106M  0 part /boot/efi
└─xvda16 259:0    0  913M  0 part /boot
```
2. Command: "sudo parted xvda", then "print"
```
ubuntu@disklab-sandbox:/dev$ sudo parted xvda
GNU Parted 3.6
Using /dev/xvda
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted) print
Model: Xen Virtual Block Device (xvd)
Disk /dev/xvda: 17.2GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End     Size    File system  Name  Flags
14      1049kB  5243kB  4194kB                     bios_grub
15      5243kB  116MB   111MB   fat32              boot, esp
16      116MB   1074MB  957MB   ext4               bls_boot
 1      1075MB  17.2GB  16.1GB  ext4
```
3. For the `xvda` partition table:
    - Does it use MBR or GPT? GPT
    - How many partitions are on the block device? 4
    - What is the largest partition? xvda14
4. Command: sudo blkid | grep -E "^/dev/xvda"
```
ubuntu@disklab-sandbox:/dev$ sudo blkid | grep -E "^/dev/xvda"
/dev/xvda16: LABEL="BOOT" UUID="91942573-b0ea-4e42-8692-2a195de77cba" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="0f03bd19-c47e-4864-9884-634fc120fb03"
/dev/xvda1: LABEL="cloudimg-rootfs" UUID="104656f3-cbcd-4c1a-bbe2-5bb510be86c0" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="2bb9818b-3393-4017-8da7-c739e7b96eac"
/dev/xvda15: LABEL_FATBOOT="UEFI" LABEL="UEFI" UUID="534B-8AD0" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="1179273d-96b8-4541-b634-ffe44e498cd0"
/dev/xvda14: PARTUUID="5ec5cc0b-28cf-468c-a6e5-61c8f025ccc3"
```
5. For the primary partition:
    - What partition is the root filesystem on? xvda1
    - What is the partition label? cloudimg-rootfs
    - What type of filesystem is on the partition? ext4
6. Command: df -h
```
ubuntu@disklab-sandbox:/dev$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/root        15G  3.1G   12G  22% /
tmpfs           479M     0  479M   0% /dev/shm
tmpfs           192M  872K  191M   1% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
/dev/xvda16     881M   76M  744M  10% /boot
/dev/xvda15     105M  6.1M   99M   6% /boot/efi
tmpfs            96M   16K   96M   1% /run/user/1000
```
7. For the root filesystem:
    - What is the total size? 15G
    - How much space is used? 3.1G
    - Where is it mounted to? /
8. Command: cat /etc/fstab
```
ubuntu@disklab-sandbox:/$ cat /etc/fstab
LABEL=cloudimg-rootfs   /        ext4   discard,commit=30,errors=remount-ro     0 1
LABEL=BOOT      /boot   ext4    defaults        0 2
LABEL=UEFI      /boot/efi       vfat    umask=0077      0 1
```
9. Fields & purpose of fields in entry that mount the root filesystem
cloudimg-rootfs is the device. It is mounted to /, the type of filesystem is ext4, "discard,commit=30,errors=remount-ro" are the mount options, 0 designates no backup operation, and 1 designates that this device is first to be checked and therefore the root.

## Part 4 - Something new

1. `gdisk` main menu options

| `gdisk` option | function |
| ---            | ---      |
| `p` |     |
| `o` |     |
| `n` |     |
| `i` |     |
| `w` |     |

2. Steps to create a partition table and partition on `xvdb`

3. Partition table on `/dev/xvdb`
```
Paste partition table information here
```

4. Answer these questions:
   
   a. What device name does the partition use?
      - Answer: 
        
   b. What size is the partition in GB?
      - Answer: 
        
   c. What filesystem type will be used on the partition?
      - Answer: 

## Part 5 - File it away

1. Commands used:
2. Commands used:
```
output here
```
3. Commands used:
4. Commands used:
5. Contents of `/mnt/expanse`:
```
list here
```
6. Commands used:
7. When can I interact with files on the filesystem on the partition in `xvdb`?
   - Answer: Whenever it is mounted
   
## Part 6 - Take a `fstab` at this

1. Commands used: sudo cp /etc/fstab /etc/fstab.bak
2. Line you added to `/etc/fstab`: UUID="4cb56482-7cd9-48ce-8e1f-44cf3b5dda23" /mnt/expanse ext4 rw,relatime 0 0
3. How did you confirm that the mount point changed? (Commands used or explain process): using "mount -a" to mount xvdb1
4. **If you restored `/etc/fstab`**, write here why you did not feel comfortable leaving your changes in place


## Part 7 - What is dead may still be read

1. Commands used:
2. What does the `strings` command do?
   - Answer:
3. Write a short explanation of what you saw in `strings` output:
4. Commands used:
5. Is the secret you deleted still showing up in the `strings` output?
6. What does the `shred` command do?
   - Answer:

### Report: How to Permanently Delete a File

**Write your report here**

## Part 8 - Citations / Resources

Add citations / resources for each core topic covered in this lab

## Extra Credit - Create a Virtual Filesystem

Report on how to perform (and verify completion) of making a virtual filesystem on a loop device


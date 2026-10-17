## Lab 07

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab07/Instructions.html

## System Discovery

1. **CPU info**
    - CPU brand & model: 12th Gen Intel Core i5-1235U
    - Number of cores: 10
    - Number of logical processors: 12
2. **GPU info**
    - Integrated GPU brand & model: Intel UHD Graphics
    - Dedicated GPU brand & model: N/A
    - Link to driver software for GPU: https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=955hj 
3. **Memory info**
    - Physical memory (RAM) size (in GB): 8
    - RAM used at system startup (in GB): 0.31
4. **Storage info** 
    - Disk 1 type: SSD
    - Disk 1 brand & model: BC711 NVMe SK kynix
    - Total Disk 1 size (in GB): 256
5. **Primary partition / volume info**
    - Primary partition mount point: c:
    - Total space on primary partition (in GB): 238
    - Space remaining on primary partition (in GB): 138
    - Filesystem on primary partition: 
6. **Motherboard info** 
    - BIOS / UEFI manufacturer & version: Dell Inc. 1.40.0 (UEFI)
    - How to access BIOS / UEFI: Settings > System > Recovery > Advanced startup > Restart now. Then select Troubleshoot > Advanced options > UEFI Firmware Settings > Restart
    - How to enable CPU virtualization: Start > Search "Turn Windows features on or off" > Check "Virtual Machine Platform" > Press OK to confirm
    - Link to driver(s) from system manufacturer: https://www.dell.com/support/product-details/en-us/product/latitude-5430-laptop/drivers
7. **OS info**
    - Operating System name & version: Windows 11 Pro 25H2 
    - Kernel for operating system: NT Kernel
    - Bootloader: BOOTMGR

## Part 2 - Virtualize the Machine

1. **Virtual Machine Manager**
    - Software & version: Oracle VirtualBox
    - Link to software URL: https://www.virtualbox.org/wiki/Downloads
    - ![screenshot of installed & running software](https://github.com/CMartin10016/CMartin10016/blob/main/Lab07/Screenshot%202026-10-16%20174801.png)

2. **Guest OS information**
    - Linux distribution selected: Ubuntu
    - URL ISO downloaded from: http://releases.ubuntu.com/26.10/

3. **Guest VM resource allocations**
    - Number of Virtual CPUs: 4
    - RAM: 2048 MB
    - Hard disk space: 35 GB

4. **Guest OS Installation**
    - Steps to install and then start the installed guest operating system:
    1. Find OS ISO
    2. Use VirtualBox to set up VM using ISO
    3. Use VirtualBox to run VM
    - ![screenshot of installed & running Guest OS in VM](https://github.com/CMartin10016/CMartin10016/blob/main/Lab07/Screenshot%202026-10-16%20185714.png)

## Part 3 - Virtual Playground:

How-to guides for some common tasking on my guest OS

My guest OS is: Ubuntu

1. **Customizing the desktop background**
    - Open Firefox and find image
    - Right Click -> Save Image As, name it anything
    - Right Click on desktop -> Change Desktop background
    - Navigate to Background and Add Picture
    - Select image from Files

2. **Installing VSCode**
    - Use Firefox to navigate to https://code.visualstudio.com/ -> Download
    - Install the Ubuntu version of VSCode
    - Navigate to Files in hotbar and find VSCode installer
    - Run VSCode installer

3. **Sharing a clipboard or folder between your host and guest OS**
    - Turn on and navigate to guest OS
    - Devices -> use Insert Guest Additions CD Image
    - Machine -> Settings
    - General -> Features -> set Shared Clipboard to bidirectional
    - Also in Machine -> Settings, Shared Folders allows you to add folders
    
4. **Cloning my course repository**
    - Go to repo, open Code
    - Copy https url
    - Open git bash
    - Enter "git clone [URL]"

5. **Connecting to my AWS instance from the VM using `ssh`**
    - Go to AWS instance using Firefox
    - Open AWS details and download PEM SSH key
    - Go to Show Apps on the hotbar
    - Search for Terminal and open
    - Enter "ssh -i '[PATH TO PEM KEY]' [IP ADDRESS]"

## Part 4 - System Reports

System Report for AWS instance:

========================================
           SYSTEM SUMMARY
========================================
[OS/Kernel]
Hostname: ceg2350-sandbox
Kernel:   Linux 7.0.0-1013-aws

[CPU Info]
Model name:                              Intel(R) Xeon(R) CPU E5-2686 v4 @ 2.30GHz
Thread(s) per core:                      1
Core(s) per socket:                      1
Socket(s):                               1

[RAM Usage]
          total        used        free
Mem:    952Mi     310Mi     329Mi

[Disk Space]
Filesystem     Size     Used     Use% Usage
/dev/root      15G      4.1G      28%

[GPU Info]
00:02.0 VGA compatible controller: Cirrus Logic GD 5446
========================================

Confirmation of output (how to verify the report results)
- OS and kernel version: uname -sr in terminal
- CPU info: lscpu in terminal
- RAM usage: free -h in terminal
- Disk space usage: df -h in terminal
- GPU info: echo "$(lspci | grep -i 'vga\|3d\|display')" in terminal

---

System Report for Linux Virtual Machine:

========================================
           SYSTEM SUMMARY
========================================
[OS/Kernel]
Hostname: CEGVM
Kernel:   Linux 7.3.0-9-generic

[CPU Info]
Model name:                              12th Gen Intel® Core™ i5-1235U
Thread(s) per core:                      1
Core(s) per socket:                      1
Socket(s):                               1

[RAM Usage]
          total        used        free
Mem:    3.2Gi     1.6Gi     127Mi

[Disk Space]
Filesystem     Size     Used     Use% Usage
/dev/sda2      25G      6.4G      28%

[GPU Info]
00:02.0 VGA compatible controller: VMware SVGA II Adapter
========================================

Confirmation of output (how to verify the report results)
- OS and kernel version: Go into Settings and System
- CPU info: Go into Settings and System
- RAM usage: Install the system-monitor extension using "sudo apt install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0 gir1.2-clutter-1.0", then run it
- Disk space usage: Install the system-monitor extension using "sudo apt install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0 gir1.2-clutter-1.0", then run it
- GPU info: Install hardinfo using "sudo apt-get install hardinfo", then run it

## Part 5 - Citations / Resources

Add citations / resources for each core topic covered in this lab

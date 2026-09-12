## Lab 02

- Name: Connor Martin
- Email martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab02/Instructions.html

## Part 1 Answers

Full / absolute path to your private key file: C:\Users\1n21g\Downloads\labsuser.pem

Command to SSH to AWS instance:
```
ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@35.172.45.112
```

## Part 2 Answers

1. `chmod u+r bubbles.txt`
    - Means: Adds read permissions to bubbles.txt for owner
    - Assessment: Allowing the user to read a given text file can be useful.
2. `chmod u=rw,g-w,o-x banana.cabana`
    - Means: Sets owner's permissions to read and write, removes write permissions from group, removes executing permissions from others, all for the file banana.cabana
    - Assessment: Manages a lot of permissions for all three types of groups at once, preventing groups from writing and others from executing. Useful for editing many permissions in one line.
3. `chmod a=w snow.md`
    - Means: Owner, group, and others are all given write permissions for snow.md.
    - Assessment: Setting all user's permissions at a time for a file can be helpful if you want this file to be universally editable.
4. `chmod 751 program`
    - Means: Allows owner to read, write, and execute, group to read and execute, and others only to execute the program.
    - Assessment: Useful if you only want the owner to edit the file but want a group of people to be able to read it while others can only use it and not read. Shorter than 'chmod u=rwx, g=rx, o=x program'
5. `chmod -R ug+w share`
    - Means: Recursively changes permissions for share and all files therein so the owner and group can write to all of them. 
    - Assessment:

## Part 3 Answers

1. Command to create new user: sudo adduser cmartin
2. Path to new user's home directory: /home/cmartin
3. Evaluate if ubuntu can add files to new user's home directory WITHOUT SUDO: "cd home/cmartin" does not allow entry, so the home directory cannot be accessed
4. Command to switch to new user: su cmartin
5. Command(s) to go to new user's home directory: cd ~
6. Evaluate if new user can add files to user's home directory: "touch test.txt" runs successfully and "ls" shows the new file
7. Command to return to `ubuntu` user: exit
8. Command to return to `ubuntu` home directory: cd ~

## Part 4 Answers

1. Command(s) to create group named `squad` and add members: "sudo addgroup squad"
2. Command(s) to add `ubuntu` & user to group `squad`: "sudo usermod -a -G squad ubuntu" & "sudo usermod -a -G squad cmartin"
3. Command(s) to allow `squad` to view the `ubuntu` user's home directory contents: "sudo chgrp squad ubuntu/" & "chmod g+r ubuntu/"
4. Command(s) to modify `share` to have group ownership of `squad`: sudo chown -R ubuntu:squad share
5. Describe your tests and commands with the user account: 
6. Describe the full set of permissions / settings that enable the user to make edits: The squad group is associated with ubuntu/, can read in ubuntu/, and has ownership over share and all of its contents.

## Part 5 Answers

For each, write the command used or answer the question posed.

1. Command(s) to make file using `sudo`: sudo touch "madewithsudo.txt"
2. Command(s) to make file with `root`: "sudo su -" then navigate to ubuntu/ and "touch 'madewithroot.txt'"
3. Describe / compare ownership and permissions of files: madewithsudo is owned by ubuntu despite using root privileges, while madewithroot is owned by the root user.
4. Which account can do what actions? (Type Y or N in columns)

Contents inside of `share`
| Account   | Can View  | Can Edit  | Can Change Permissions    |
| ---       | ---       | ---       | ---                       |
| `root`    |  Y         |    Y       |      Y                     |
| `ubuntu`  |  Y         |    Y       |       Y                    |
| `BOB`     |   Y        |    N       |       N                    |

`madewithsudo.txt`
| Account   | Can View  | Can Edit  | Can Change Permissions    |
| ---       | ---       | ---       | ---                       |
| `root`    | Y          |   Y        |     Y                      |
| `ubuntu`  | Y          |    N       |     N                      |
| `BOB`     | Y          |    N       |     N                      |

5. Command(s) to modify permissions: "sudo chgrp squad madewithsudo.txt" & "chmod g+rw 'madewithsudo.txt'"
6. How to give user account `sudo`: sudo usermod -a -G sudo cmartin

## Part 6 - Citations / Resources

## Citations

SSH: https://www.ssh.com/academy/ssh/protocol
    Explained the purpose and function of ssh.
    
Permissions: https://raidermailwright-my.sharepoint.com/:p:/g/personal/kayleigh_duncan_wright_edu/Eevic4RiqfZLmCbWC0YeiaIBpj1IaTRemb1maDKI8nlJuw?e=rWvAZa
    Course material explained how to use permissions and how to change them with specific command examples on how to use chmod.

User Management: https://www.geeksforgeeks.org/linux-unix/user-management-in-linux/
    Explained how to manipulate users by creating them and changing their permissions.

Group Management: https://askubuntu.com/questions/488485/allowing-a-group-read-write-access-to-a-directory
    Help thread explaining how to allow a group access to a directory like ubuntu/.

Sudo/Root Usage: https://www.linux.org/threads/difference-between-sudo-and-root-user.58559/
    Explains the difference between using sudo and being the root user, and how files created while root user will be owned by root.

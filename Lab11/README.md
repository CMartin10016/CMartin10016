## Lab 11

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab11/Instructions.html

## Part 1 Answers:

1. `tar` options:

| `tar` Option | Description |
|--------|------------------------|
| `-c`   | Create archive                       |
| `-v`   | Verbose descriptions                       |
| `-f`   | Takes argument of archive                       |
| `-z`   | Filter through gzip                       |
| `-x`   | Extract archive                       |
| `-t`   | List contents of archive                       |

2. Command(s) to create and compress your archive: tar -cvf myarchive.tar.gz ~/

3. Method(s) used to prove your archive is compressed: "tar -tf myarchive.tar.gz" correctly lists all files within the archive, which it would not do if it was a directory.

## Part 2 Answers:

1. `sftp` commands:

| `sftp` Command | Description |
|---------|------------------------|
| `ls`    | Lists files in current remote directory                       |
| `lls`   | Lists files in current local directory                       |
| `cd`    | Moves directory within remote server                       |
| `lcd`   | Moves directory for local host                       |
| `pwd`   | Print current remote directory                       |
| `lpwd`  | Print current local directory                       |
| `put`   | Upload a local file to remote server                       |
| `get`   | Download a remote file to local machine                       |
| `exit` / `bye` | Close connection                |

2. Command to connect with `sftp`: `sftp -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@35.172.45.112`
3. Command(s) to use `sftp` to download your `.tar.gz` file to your system: `cd git/CMartin10016/Lab11` to move to correct directory, then `get myarchive.tar.gz`
4. Command(s) to decompress & extract your `.tar.gz` file to your system: tar -xvf "myarchive.tar.gz"

## Part 3 Answers:

1. Command to install `apache2` or `nginx`: sudo apt instal "apache2"
2. Command to confirm that web serving service is running: systemctl
3. Command to download `simple-site.tar.gz` to your AWS instance: wget "https://github.com/pattonsgirl/CEG2350/raw/refs/heads/main/Labs/Lab11/simple-site.tar.gz"
4. Command(s) to change permissions: "sudo chmod 775 /var/www/html", "sudo chown ubuntu:squad index.html"
5. Command to extract the compressed archive to `/var/www/html`: "sudo tar -xvf 'simple-site.tar.gz'"
6. Required changes to `index.html` will be awarded credit based on screenshot.
7. [Link to website screenshot](https://github.com/CMartin10016/CMartin10016/blob/20-lab-11---part-3/Lab11/Screenshot%202026-11-19%20144507.png)

## Part 4 Answers:

1. Commonly visited `ssh` files:

| `ssh` File Path / Name          | Purpose            |
|---------------------------------|--------------------|
| `~/.ssh/config`                 | Set up ssh connections to login using a host designated name                   |
| `~/.ssh/id_rsa`                 | RSA private key                   |
| `~/.ssh/id_rsa.pub`             | RSA public key                   |
| `~/.ssh/id_ed25519`             | Ed25519 private key                   |
| `~/.ssh/id_ed25519.pub`         | Ed25519 public key                   |
| `~/.ssh/authorized_keys`        | Authorizes public keys that are allowed to login                   |
| `~/.ssh/known_hosts`            | Stores hosts that this machine has logged in to                   |

2. Command to generate a new key, with options entered into the fields 
```
PS C:\Users\1n21g> ssh-keygen -t rsa -C "martin782@wright.edu"
Generating public/private rsa key pair.
Enter file in which to save the key (C:\Users\1n21g/.ssh/id_rsa): id_rsa_lab11
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in id_rsa_lab11
Your public key has been saved in id_rsa_lab11.pub
```

3. Create the user and / or prove the user exists
```
ubuntu@ceg2350-sandbox:~$ su cmartin
Password:
cmartin@ceg2350-sandbox:/home/ubuntu$ whoami
cmartin
```

4. Contents of `~/.ssh/authorized_keys` in remote user account:
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC9XrSnYIt/0QT2LRm/lu2dyP8aO6o6a1p7IfFDs1kMMtnMnyBORHuuieJmo/aYjWmJHa0xRgzKmA8mqyAi97ktkxRa3tTiOQOZ70dYzrFv61G4UwNXaFFfE3HLQpcp+ZDkcurrNBCkybKTe0eD5adyt2tF2VUKEOjrfYsKnVW4A2MPO9NfM3JtCSkkEb8c02TvaKXRTQHC8Ne8iDK3Ry7UJz79OXAc9jzUUrlc+8iiC615Li1iPRekvIRu42IFvpc3mzWkry1nTx5dHTWXTIuPs29LExBpIwcELBKBtF/7OsinnPJM+rXw314CpLla+SlupJzZ7fAg5ev8OLzW+0fYxCcTFXNv91q1pexrx/P7PtZicB9m7YXgmX/QKnFctQmbEEUHHDUQ5kXUDj8o/3a0gLEgoYzDcZbGwIC3kH0qyYztSsyBTW6rJOR9GoyshVYKbl2iNBaPOQnI1kyw/q9xmJgWH/MxWQE/0idWyAAxv38dWBmv82TLD7mR803qcBU= martin782@wright.edu
```

5. `ssh` command: ssh -i C:\Users\1n21g\.ssh\id_rsa_lab11 cmartin@35.172.45.112

6. Updated `config` file contents:
```
# ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@35.172.45.112
Host mainaws
        HostName 35.172.45.112
        User ubuntu
        Port 22
        IdentityFile C:\Users\1n21g\Downloads\labsuser.pem

#  ssh -i C:\Users\1n21g\.ssh\id_rsa_lab11 cmartin@35.172.45.112
Host cmartinaws
        HostName 35.172.45.112
        User cmartin
        Port 22
        IdentityFile C:\Users\1n21g\.ssh\id_rsa_lab11

# ssh -i 'C:\Users\1n21g\Downloads\labsuser.pem' ubuntu@184.197.46.249
Host secondaws
        HostName 184.197.46.249
        User ubuntu
        Port 22
        IdentityFile C:\Users\1n21g\Downloads\labsuser.pem
```

7. `ssh` command post `config` file entry: ssh cmartinaws

## Part 5 - Citations / Resources

Add citations / resources for each core topic covered in this lab

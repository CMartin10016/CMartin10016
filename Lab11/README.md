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
| `~/.ssh/config`                 |                    |
| `~/.ssh/id_rsa`                 |                    |
| `~/.ssh/id_rsa.pub`             |                    |
| `~/.ssh/id_ed25519`             |                    |
| `~/.ssh/id_ed25519.pub`         |                    |
| `~/.ssh/authorized_keys`        |                    |
| `~/.ssh/known_hosts`            |                    |

2. Command to generate a new key, with options entered into the fields 
```
Enter command & options entered while running here
```

3. Create the user and / or prove the user exists
```
Enter command & output for creating user and / or proving user exists.
```

4. Contents of `~/.ssh/authorized_keys` in remote user account:
```
Enter contents here
```

5. `ssh` command:

6. Updated `config` file contents:
```
Enter block with connection information in config file here
```

7. `ssh` command post `config` file entry:

## Part 5 - Citations / Resources

Add citations / resources for each core topic covered in this lab

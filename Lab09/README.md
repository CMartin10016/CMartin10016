## Lab 09

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab09/Instructions.html

## Part 1 - Game the system

- Game name: 2048
- How to install: "sudo apt install gcc", "wget https://raw.githubusercontent.com/mevdschee/2048.c/master/2048.c", gcc -o 2048 2048.c
- Location of game executable: ~/2048
- How to run game: ./2048

## Part 2 - Process Control

1. Table of process related commands:

|  Action   |  Command or Keybind   |  
| ---       | --- | 
| Check process CPU/memory usage | top    |
| Show running processes         | ps aux    |
| Show detailed process tree     | pstree    |
| Find a process by name         | pgrep    |
| Kill a process by PID          | kill [PID]    |
| Force kill a process by PID    | kill -9 [PID]    |
| Pause / suspend a process by PID  | kill -19 [PID]    |
| Resume a suspended process by PID | kill -18 [PID]    |

2. `ps` fields table:

| `ps` field | Meaning |
| ---        | ---     |
| PID        | Process ID        |
| PPID       | Parent process ID        |
| UID / USER | User that started process        |
| TTY        | Terminal controlling process        |
| STAT       | State of process        |
| COMMAND / CMD | Command that started the process        |
| %CPU       | % of CPU used by process        |
| %MEM       | % of memory used by process        |
| PSR        | Processor that process last used       |

3. `ps` command: ps o uid,pid,ppid,tty,stat,cmd
4. Output of `ps` with two shells, one running the game:
```
ubuntu@ceg2350-sandbox:~$ ps a -o uid,pid,ppid,tty,stat,cmd
  UID     PID    PPID TT       STAT CMD
    0     626       1 ttyS0    Ss+  /sbin/agetty -o -p -- \u --keep-baud 115200,57600,38400,9600 - vt220
    0     717       1 tty1     Ss+  /sbin/agetty -o -p -- \u --noclear - linux
 1000    1077    1074 pts/0    Ss   -bash
 1000    1245    1224 pts/1    Ss   -bash
 1000    1400    1077 pts/0    S+   ./2048
 1000    1406    1245 pts/1    R+   ps a -o uid,pid,ppid,tty,stat,cmd
```
5. For the game:
   - Process id: 1400
   - Parent process id: 1077
   - What is the parent process: bash
6. `kill` to kill only the game: kill 1400
   - Describe what the effect was: Exits out of game to terminal
7. `kill` to kill the game and it's parent process: "kill [PID]", then "kill 1077"
   - Describe what the effect was: 2048 continues to exist when parent is killed and parent process starts again immediately after. 2048 had to be killed directly before game ended.
8. Describe what happens if you close / `exit` your connection with Shell C and determine if you can reenter the game (resume the process).
   - Answer: Exiting the shell does not affect the gme existing in another shell.

## Part 3 - back and fore

1. Fill out the following table of job control commands and keybinds:

|  Action   |  Command or Keybind   |  
| ---       | --- | 
| Show current jobs               | jobs    |
| Run a command in background     | bg    |
| Pause current foreground job    | CTRL + Z    |
| Send job to the background      | bg    |
| Bring job to the foreground     | fg    |
| Kill a background / stopped job | kill    |

2. Run in the foreground: ./2048
3. `STOP` signal to suspend it: CTRL + Z
4. Proof of life from `ps` output: 
```
ubuntu@ceg2350-sandbox:~$ ps
    PID TTY          TIME CMD
   1022 pts/0    00:00:00 bash
   1082 pts/0    00:00:00 2048
   1156 pts/0    00:00:00 ps
```
5. Resume in the foreground: fg
6. `TERMINATE` signal to kill it: CTRL + C
7. Start as a background process: "./2048", CTRL + Z, then "bg"
8. Output of `jobs` from controlling terminal:
```
ubuntu@ceg2350-sandbox:~$ jobs
[1]   Stopped                 ./2048
[2]-  Stopped                 ./2048
[3]+  Stopped                 ./2048
```
Output of `ps`:
```
ubuntu@ceg2350-sandbox:~$ ps
    PID TTY          TIME CMD
   1022 pts/0    00:00:00 bash
   1203 pts/0    00:00:00 2048
   1204 pts/0    00:00:00 2048
   1205 pts/0    00:00:00 2048
   1206 pts/0    00:00:00 ps

[3]+  Stopped                 ./2048
```
9. Kill job: kill -9 1203
10. Move job to the foreground: fg %2
11. Describe what happens, using process knowledge in your description, if you close / `exit` your connection with this shell and determine if you can reenter the game (resume the process).
   - Answer: If you exit this shell, the processes are still running in other terminals, meaning you can reenter the game.

## Part 4 - Detach

1. Table of `tmux` commands and keybinds:

|  Action   |  Command or Keybind   |  
| ---       | --- | 
| Start a new session and set a name   | tmux    |  
| List `tmux` sessions                 | tmux ls    |
| Attach to session by name            | tmux attach    |
| Kill session by name                 | tmux kill-session -t [session]    |
| Detach from session                  | CTRL + b, d    |
| Split pane horizontally              | CTRL + b, %   |
| Split pane vertically                | CTRL + b, "   |
| Switch panes                         | CTRL + b, q, [pane num]   |
| Close pane                           | CTRL + b, x   |

2. Create a `tmux` session: tmux
3. Detach from the session: CTRL + B, then press d
4. `ps` command:
```
ubuntu@ceg2350-sandbox:~$ ps o uid,pid,ppid,tty,stat,cmd
  UID     PID    PPID TT       STAT CMD
 1000    1016    1013 pts/0    Ss   -bash
 1000    1073    1072 pts/1    Ss   -bash
 1000    1084    1073 pts/1    S+   ./2048
 1000    1085    1016 pts/0    R+   ps o uid,pid,ppid,tty,stat,cmd
```
5. Command to list `tmux` sessions:
```
ubuntu@ceg2350-sandbox:~$ tmux ls
0: 1 windows (created Fri Oct 30 23:07:43 2026)
```
6. How can you determine if your `tmux` session with your game running is available?
   - Answer: "tmux ls" and the ps command confirm that the game is still running even after exiting.
7. Reattach to `tmux` session: tmux attach
8. Kill `tmux` session: CTRL + B, then press x, then press y to confirm

## Part 5 - At Your Service

Investigating `disk-watchdog.sh`:

[Link to `disk-watchdog.sh`](git/path/to/your/script/file)

1. What command is the script using to find the disk usage percentage? DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
2. The script uses a while loop. What is the condition for this loop, and what does that mean for the process's lifespan?  While true; the process will never end on its own.
3. At what specific percentage (%) does the script trigger a "WARNING"?  >80%
4. Why is sleep used in this script? So that even though the program prints forever, the console will not be overrun with print messages.

Enabling `disk-watchdog.service`:

[Link to `disk-watchdog.service`](git/path/to/your/service/file)

1. Command to reload `systemd`: sudo systemctl daemon-reload
2. Command(s) to start and enable `disk-watchdog.service`  sudo systemctl start disk-watchdog.service,  sudo systemctl enable disk-watchdog.service
3. Command to view `disk-watchdog.service` status: systemctl status disk-watchdog.service
4. How can you tell from the output that the service is actually running? The "Active: " section of the output says that it is currently running and is colored green
5. What is the current PID of the service? 1487

Triggering the warning and monitoring service logs:

1. Command to view `disk-watchdog.service` logs in real time: journalctl -g "disk-watch"
2. Command to create a large file in your home directory: fallocate -l 10G blankspace.img
3. Why did the `WARNING` message appear in your `disk-watchdog.service` logs? The service is unable to be authenticated.
4. Paste a snippet of your `disk-watchdog.service` logs showing normal / WARNING messages:
```
Oct 30 23:14:52 ceg2350-sandbox sudo[1174]:   ubuntu : TTY=pts/0 ; PWD=/usr/local/bin ; USER=root ; COMMAND=/usr/bin/vim disk-watchd>
Oct 30 23:15:30 ceg2350-sandbox sudo[1188]:   ubuntu : TTY=pts/0 ; PWD=/usr/local/bin ; USER=root ; COMMAND=/usr/bin/chmod ugo+x dis>
Oct 30 23:21:37 ceg2350-sandbox sudo[1325]:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/vim /etc/systemd/>
Oct 30 23:29:26 ceg2350-sandbox sudo[1337]:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/vim /etc/systemd/>
Oct 30 23:30:28 ceg2350-sandbox sudo[1346]:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/vim /etc/systemd/>
Oct 30 23:37:26 ceg2350-sandbox polkitd[549]: Operator of unix-process:1472:222469 FAILED to authenticate to gain authorization for >
Oct 30 23:37:33 ceg2350-sandbox sudo[1483]:   ubuntu : TTY=pts/0 ; PWD=/etc/systemd/system ; USER=root ; COMMAND=/usr/bin/systemctl >
Oct 30 23:37:33 ceg2350-sandbox systemd[1]: Starting disk-watchdog.service - Disk Watchdog: Continuously scans disk space to ensure >
Oct 30 23:37:33 ceg2350-sandbox systemd[1]: Started disk-watchdog.service - Disk Watchdog: Continuously scans disk space to ensure a>
Oct 30 23:38:00 ceg2350-sandbox sudo[1496]:   ubuntu : TTY=pts/0 ; PWD=/etc/systemd/system ; USER=root ; COMMAND=/usr/bin/systemctl 
```

## Part 6 - Citations & Resources

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.

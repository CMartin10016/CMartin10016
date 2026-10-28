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
| Show current jobs               |     |
| Run a command in background     |     |
| Pause current foreground job    |     |
| Send job to the background      |     |
| Bring job to the foreground     |     |
| Kill a background / stopped job |     |

2. Run in the foreground: 
3. `STOP` signal to suspend it: 
4. Proof of life from `ps` output:
```
insert line here
```
5. Resume in the foreground:
6. `TERMINATE` signal to kill it: 
7. Start as a background process: 
8. Output of `jobs` from controlling terminal:
```
Insert output here
```
Output of `ps`:
```
Insert output here
```
9. Kill job:
10. Move job to the foreground: 
11. Describe what happens, using process knowledge in your description, if you close / `exit` your connection with this shell and determine if you can reenter the game (resume the process).
   - Answer: 

## Part 4 - Detach

1. Table of `tmux` commands and keybinds:

|  Action   |  Command or Keybind   |  
| ---       | --- | 
| Start a new session and set a name   |     |  
| List `tmux` sessions                 |     |
| Attach to session by name            |     |
| Kill session by name                 |     |
| Detach from session                  |     |
| Split pane horizontally              |     |
| Split pane vertically                |     |
| Switch panes                         |     |
| Close pane                           |     |

2. Create a `tmux` session:
3. Detach from the session:
4. `ps` command:
```
Output of command goes here
```
5. Command to list `tmux` sessions:
```
Output of command goes here
```
6. How can you determine if your `tmux` session with your game running is available?
   - Answer: 
7. Reattach to `tmux` session:
8. Kill `tmux` session: 

## Part 5 - At Your Service

Investigating `disk-watchdog.sh`:

[Link to `disk-watchdog.sh`](git/path/to/your/script/file)

1. What command is the script using to find the disk usage percentage?  
2. The script uses a while loop. What is the condition for this loop, and what does that mean for the process's lifespan?  
3. At what specific percentage (%) does the script trigger a "WARNING"?  
4. Why is sleep used in this script?

Enabling `disk-watchdog.service`:

[Link to `disk-watchdog.service`](git/path/to/your/service/file)

1. Command to reload `systemd`:
2. Command(s) to start and enable `disk-watchdog.service`
3. Command to view `disk-watchdog.service` status:
4. How can you tell from the output that the service is actually running?
5. What is the current PID of the service?

Triggering the warning and monitoring service logs:

1. Command to view `disk-watchdog.service` logs in real time: 
2. Command to create a large file in your home directory:
3. Why did the `WARNING` message appear in your `disk-watchdog.service` logs?
4. Paste a snippet of your `disk-watchdog.service` logs showing normal / WARNING messages:
```
logs go here
```

## Part 6 - Citations & Resources

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.

## Lab 10

- Name: Connor Martin
- Email: martin.782@wright.edu

Instructions for this lab: https://pattonsgirl.github.io/CEG2350/Labs/Lab10/Instructions.html

## Part 0 - Issues & Branches

**DO NOT DELETE YOUR BRANCHES.  DO NOT DELETE YOUR ISSUES**

**`git` branch guide**

| Task                                                    | Command(s) / Steps | Notes |
| ------------------------------------------------------- | ------------------ | ----- |
| **Create a branch**                                     | git branch [branch name]                   |       |
| **Change to branch**                                    | git switch [branch name]                   |       |
| **Add branch to remote if created locally (GitHub)**    | git push origin [branch name]                | "origin" could be something else depending on what remote source is called      |
| **Steps to `merge` changes from another branch to (`main`)** | 1. commit branch changes, 2. switch to main branch (git switch main), 3. git merge [branch name]|       |
| **Steps to resolve a `merge` conflict**                 | 1. examine listed conflicts, 2. edit file(s) so that conflict no longer occurs, 3. git add and git commit changes|       |


## Part 1 - Compilers

1. Command(s) to install the C compiler and `make` on Ubuntu: "sudo apt install build-essential"
2. Command(s) to confirm the installation of both on Ubuntu: "which gcc", gcc --version
3. Your computer's OS: Windows
4. Command(s) to install the C compiler and `make` on your computer's OS: Install MinGW through MSYS2, "pacman -S mingw-w64-x86_64-gcc make"
5. Command(s) to confirm the installation of both on your computer's OS: where gcc, gcc --version

## Part 2 - Compiling

1. Command(s) to download the `todo-lab.tar.gz` archive: wget "https://raw.githubusercontent.com/pattonsgirl/CEG2350/refs/heads/main/docs/Labs/Lab10/todo-lab.tar.gz"
2. Command(s) to extract the files from the archive: tar -xvf todo-lab.tar.gz
3. What `undefined reference` means and why the provided `Makefile` hit it: Makefile only knows about main.c, and does not have access to the expected functions
4. Command(s) to compile `main.c` and `todo.c` into object files: gcc -c main.c/todo.c
5. Command(s) to link the object files into `todo_app`: gcc -o todo_app main.o todo.o
6. Command(s) to run the program: ./todo_app

## Part 3 - Git Hygiene

Remove this statement and the exclamation point from the line below so TAs can click to check for a working `.gitignore` file.  Test that the link works - if it doesn't, fix the pathing.

[`.gitignore` file in root of repository](../.gitignore)

## Part 4 - Fix It

- Link to Pull Request: https://github.com/CMartin10016/CMartin10016/pull/15
- Link to fix commit: https://github.com/CMartin10016/CMartin10016/commit/7547ff13282c4a9e2050a081f950bad853a9b835

## Part 5 - `makey makey`

Using `Makefile` to build executable: 
`$(TARGET): $(OBJS)
        $(CC) $(CFLAGS) $(SRCS) -o $(TARGET)`

Using `Makefile` to run program:
`run: todo_app
        ./todo_app`

Using `Makefile` to remove compilation files:
`clean:
        rm main.o
        rm todo.o
        rm todo_app`

After `touch todo.c`, why does `make build` only recompile `todo.c`, how does `make` know what to skip, and why is that useful?

`make build` skips everything but todo.c because it knows that todo.c is the only thing that needs compiled based off of its prerequisites. This is useful because it means that only todo.c needs to be recompiled and less work is required.

## Part 6 - Libraries & Other OSes

**Build errors**

| Error | Stage (compiling or linking) | What you did to fix it |
| ----- | ---------------------------- | ---------------------- |
| Ncurses is not installed and can't be used in display.c      | Compiling                             | Download ncurses                       |

**`ldd` output for `todo_app`**

```
ubuntu@ceg2350-sandbox:~/git/CMartin10016/Lab10/todo-lab$ ldd todo_app
        linux-vdso.so.1 (0x0000729a6522f000)
        libncurses.so.6 => /lib/x86_64-linux-gnu/libncurses.so.6 (0x0000729a651f0000)
        libtinfo.so.6 => /lib/x86_64-linux-gnu/libtinfo.so.6 (0x0000729a651bc000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x0000729a64e00000)
        /lib64/ld-linux-x86-64.so.2 (0x0000729a65231000)
```

Line(s) for ncurses:

**Library equivalents**

| Library (Ubuntu)    | Ubuntu package | Link flag | macOS equivalent & how to get it | Windows (MSYS2) equivalent & how to get it |
| ------------------- | -------------- | --------- | -------------------------------- | ------------------------------------------ |
| **math**            | `libc6-dev`    | `-lm`     | Built in to the system, nothing to install | Built in to the C runtime, nothing to install |
| **ncurses**         | `libncurses-dev`               | `-lncurses`          | Install MacPorts, then run `sudo port install ncurses` in the command line                                 | MSYS2 already has it                                           |
| **pthreads**        | `libpthread-stubs0-dev`               | `-lpthread`          | Built in                                 | Install gcc, which comes with pthreads                                           |
| **readline**        | `libreadline6 libreadline6-dev`               | `-lreadline`          | Install MacPorts, then run `sudo port install readline`                                 | Run `pacman -S mingw-w64-x86_64-readline`                                           |

What in your `Makefile` would need to change to build this program on your computer's OS?

MSYS2 already has ncurses, so assuming everything else works properly, the Makefile should build correctly as is.

## Part 7 - Citations & Resources

To add citations, provide the site and a summary of what it assisted you with.  If generative AI was used, include which generative AI system was used and what prompt(s) you fed it.

## Extra Credit - Cross-Platform `Makefile`

OS(es) tested in addition to Ubuntu:

Differences your `Makefile` handles for each OS:

Screenshot proof of it in action!

![Insert screenshot here](path/to/screenshot)
